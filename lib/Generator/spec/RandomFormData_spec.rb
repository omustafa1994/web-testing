require 'spec_helper'

describe 'this rspec is to test RandomFormData' do 

  before(:all) do
    @movie_data = Generator.new.form_data
  end

  context 'testing the positive paths for the form' do 

    it '33' do
      expect(@movie_data.first_name).to be_kind_of(String)
    end

  end
end
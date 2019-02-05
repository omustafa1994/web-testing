require 'spec_helper'

describe 'To test data from RandomFormData' do 

  before(:all) do
    @random_data = Generator.new.form_data
  end

  context 'testing the expected results' do 

    it 'should return first name as a string' do
      expect(@random_data.first_name).to be_kind_of(String)
    end

    it 'should return last name as a string' do
      expect(@random_data.first_name).to be_kind_of(String)
    end

  end
end
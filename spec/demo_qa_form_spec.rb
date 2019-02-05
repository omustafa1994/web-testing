require 'spec_helper'

describe 'testing the demoqa automation form' do 

  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practise_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @fname = Generator.new.form_data.first_name
    @lname = Generator.new.form_data.last_name
  end

  context 'testing the positive paths for the form' do 

    it 'should land on the registration demo form page' do 
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a random first name' do
      @driver.input_firstname_field(@fname)
      expect(@driver.input_firstname_field_value).to eq @fname
    end

    it 'should accept a random last name' do
      @driver.input_lastname_field(@lname)
      expect(@driver.input_lastname_field_value).to eq @lname
    end

  end
end
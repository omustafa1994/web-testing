require 'spec_helper'

describe 'testing the demoqa automation form' do 

  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practise_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @fname = Generator.new.form_data.first_name
    @lname = Generator.new.form_data.last_name
    @date = Generator.new.form_data.recent_date.to_s #to string
  end

  context 'testing the positive paths for the form' do 

    it 'should land on the registration demo form page' do 
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a random first name ' do
      @driver.input_firstname_field(@fname)
      expect(@driver.input_firstname_field_value).to eq @fname
    end

    it 'should accept a random last name' do
      @driver.input_lastname_field(@lname)
      expect(@driver.input_lastname_field_value).to eq @lname
    end

    it 'should select the female gender button' do
      @driver.input_gender_button
      expect(@driver.input_gender_button_value).to eq 'Female'
    end

    it 'should select the 5 years experience button' do
      @driver.input_experience_button
      expect(@driver.input_experience_button_value).to eq '5'
    end

    it 'should accept a random date' do 
      @driver.input_date_field(@date)
      expect(@driver.input_date_field_value).to eq @date
    end

    it 'should select the automation tester profession button' do
      @driver.input_profession_button
      expect(@driver.input_profession_button_value).to eq 'Automation Tester'
    end

    it 'should select the selenium webdriver automation tool button' do
      @driver.input_automation_tool_button
      expect(@driver.input_automation_tool_button_value).to eq 'Selenium Webdriver'
    end

    it 'should select europe from the dropdown menu' do
      @driver.select_dropdown
      expect(@driver.select_dropdown_value).to eq "Europe"
    end

  end
end
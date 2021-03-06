require 'selenium-webdriver'
require_relative './Generator/Generator'

class QatoolsForm

  # Page objects
  PRACTISE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  GENDER_BUTTON = 'sex-1'
  EXPERIENCE_BUTTON = 'exp-4'
  DATE_FIELD = 'datepicker'
  PROFESSION_BUTTON = 'profession-1'
  PIC_BUTTON = 'photo'
  AUTO_TOOL_BUTTON = 'tool-2'
  CONTINENTS = 'continents'

  def initialize 
    @chrome_driver = Selenium::WebDriver.for :chrome 
  end

  def visit_practise_form
    @chrome_driver.get(PRACTISE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def current_url
    @chrome_driver.current_url
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_gender_button
    @chrome_driver.find_element(:id, GENDER_BUTTON).click
  end

  def input_gender_button_value
    @chrome_driver.find_element(:id, GENDER_BUTTON)['value']
  end

  def input_experience_button
    @chrome_driver.find_element(:id, EXPERIENCE_BUTTON).click
  end

  def input_experience_button_value
    @chrome_driver.find_element(:id, EXPERIENCE_BUTTON)['value']
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, DATE_FIELD).send_keys(text)
  end
  
  def input_date_field_value
    @chrome_driver.find_element(:id, DATE_FIELD)['value']
  end

  def input_profession_button
    @chrome_driver.find_element(:id, PROFESSION_BUTTON).click
  end

  def input_profession_button_value
    @chrome_driver.find_element(:id, PROFESSION_BUTTON)['value']
  end

  def input_pic_button
    @chrome_driver.find_element(:id, PIC_BUTTON).click
  end

  def input_automation_tool_button
    @chrome_driver.find_element(:id, AUTO_TOOL_BUTTON).click
  end

  def input_automation_tool_button_value
    @chrome_driver.find_element(:id, AUTO_TOOL_BUTTON)['value']
  end

  def select_dropdown
    @select = @chrome_driver.find_element(:id, CONTINENTS)
    @select.find_element(:css, "option:nth-child(2)").click 
  end

  def select_dropdown_value
    @chrome_driver.find_element(:id, CONTINENTS)['value']
  end

end
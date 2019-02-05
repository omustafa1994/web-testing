require 'selenium-webdriver'

class QatoolsForm

  # Page objects
  PRACTISE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'

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

end

# test = QatoolsForm.new
# test.visit_practise_form
# test.input_firstname_field('My name Jeff')
# p test.input_firstname_field_value
# sleep 5
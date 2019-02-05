require 'faker'

class RandomFormData

  # get a random first name
  def first_name
    Faker::Name.first_name
  end

  # get a random last name
  def last_name
    Faker::Name.last_name
  end

end
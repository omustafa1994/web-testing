require 'faker'

class RandomFormData

  def first_name # get a random first name
    Faker::Name.first_name
  end

  def last_name# get a random last name
    Faker::Name.last_name
  end

end
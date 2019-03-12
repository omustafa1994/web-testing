require 'faker'

class RandomFormData

  def first_name # get a random first name
    Faker::Name.first_name
  end

  def last_name # get a random last name
    Faker::Name.last_name
  end

  def recent_date # get a random date in the past (up to 14 days)
    Faker::Date.backward(14) #=> "Fri, 25 Jan 2019"
  end

end
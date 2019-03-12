require_relative './services/RandomPostcodes'
require_relative './services/RandomFormData'

class Generator

  def postcodes
    RandomPostcodes.new
  end

  def form_data
    RandomFormData.new
  end

end
class Location < ApplicationRecord

  geocoded_by :my_location #we are using the geocoder gem to get the lat and long associated with the input address

  after_validation :geocode

  def my_location
  	"#{address}, #{city}, GA"
  end

end

class Location < ApplicationRecord
  has_many :articles

  before_save :search_location_info_from_geocoder

private

  def search_location_info_from_geocoder
    location_info  = Geocoder.search(name)[0]
    self.address   = location_info.formatted_address
    self.latitude  = location_info.geometry["location"]["lat"]
    self.longitude = location_info.geometry["location"]["lng"]
  end
end

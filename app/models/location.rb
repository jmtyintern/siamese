class Location < ApplicationRecord
  has_many :articles

  before_save :search_lat_and_lon_from_geocoder



  def search_lat_and_lon_from_geocoder


    Geocoder.search("aa")
end

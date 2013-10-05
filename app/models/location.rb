class Location < ActiveRecord::Base
  attr_accessible :city, :country, :id, :lat, :lng, :name, :neighborhood, :phoneNumber, :postalCode, :state, :streetAddress1, :streetAddress2
end

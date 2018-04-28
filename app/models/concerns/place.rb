class Place < ApplicationRecord
	geocode_by :address
    after_validation :geocode, if: :address_changed? 
end
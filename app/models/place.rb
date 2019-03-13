class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	validates :name, presence: true, length: {minimum: 3, too_short: "Name must be greater than %{count} characters."}
	validates :address, :description, presence: true

end

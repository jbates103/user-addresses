class Address < ActiveRecord::Base
	belongs_to :user
	REGEX_ZIPCODE_VALIDATOR = /\d{5}(?:[-\s]\d{4})?/
	validates :street_1, presence: true,
			  length: { in: 2..100 }
	validates :city, presence: true,
			  length: { in: 2..25 }
	validates :state, presence: true,
			  length: { in: 2..20}
	validates :zip_code, presence: true,
			  format: { with: REGEX_ZIPCODE_VALIDATOR }
	validates :current, inclusion: { in: [0, 1]}
	enum type_address: [:home, :work]
	
end

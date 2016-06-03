class User < ActiveRecord::Base
	has_many :addresses
	REGEX_SSI_VALIDATOR = /\d{3}-\d{2}-\d{4}/
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	validates :ssi, presence: true, uniqueness: true, 
	format: { with: REGEX_SSI_VALIDATOR }
end

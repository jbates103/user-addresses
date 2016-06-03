module AddressesHelper
	def user_address_title(user)
		"#{user.first_name} #{user.last_name} Addresses"
	end

	def add_address_title
		"Add An Address"
	end

	def edit_address_title
		"Edit Address"
	end
end

class Session
	include ActiveModel::Model#Es para usar el first, create, save que se pone cuando se hace por scaffold

	attr_accessor :user_name, :password

	validates :user_name, presence: true
	validates :password, presence: true

	def authenticate
		current_user && current_user.authenticate(password)
	end

	def current_user
 		User.find_by(user_name: user_name)
	end

end
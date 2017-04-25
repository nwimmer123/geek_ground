class User < ActiveRecord::Base
  has_secure_password
	has_many :subscriptions
	has_many :books, through: :subscriptions
	has_many :movies, through: :subscriptions
	has_many :shows, through: :subscriptions

  def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
  
end

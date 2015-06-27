class User < ActiveRecord::Base
  has_one :profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# Rob to insert callbacks, so that when a user signs up we assign a role to them
	after_create :assign_resident_role

	def assign_resident_role
		self.add_role :resident
	end

end

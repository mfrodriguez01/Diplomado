class User < ActiveRecord::Base
  belongs_to :role
  has_many :history_sessions

  has_secure_password

	validates :name, presence: true
	validates :last_name, presence: true
	validates :user_name, presence: true
	validates :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end

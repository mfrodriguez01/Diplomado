# == Schema Information
#
# Table name: pilots
#
#  id             :integer          not null, primary key
#  name           :string
#  last_name      :string
#  identification :string
#  telephone      :string
#  email          :string
#  experience     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Pilot < ActiveRecord::Base

	validates :name, presence: true
	validates :last_name, presence: true	
	validates :identification, presence: true
	validates :email, presence: true
	validates :experience, presence: true	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end

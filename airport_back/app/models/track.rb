# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  code       :string
#  long       :decimal(, )
#  state      :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base

	validates :code, presence: true, length: 4..10	
	validates :long, presence: true
end

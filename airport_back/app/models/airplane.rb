# == Schema Information
#
# Table name: airplanes
#
#  id         :integer          not null, primary key
#  number     :string
#  model      :string
#  capacity   :integer
#  size       :integer
#  state      :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ActiveRecord::Base
	validates :number, presence: true, length: 4..10	
	validates :capacity, presence: true
end

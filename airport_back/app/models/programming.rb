# == Schema Information
#
# Table name: programmings
#
#  id          :integer          not null, primary key
#  airplane_id :integer
#  track_id    :integer
#  pilot_id    :integer
#  date        :date
#  hour        :time
#  origin      :string
#  destination :string
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Programming < ActiveRecord::Base
  belongs_to :airplane
  belongs_to :track
  belongs_to :pilot

  validates :origin, presence: true  
  validates :destination, presence: true  
  validates :date, presence: true
  validates :hour, presence: true


end

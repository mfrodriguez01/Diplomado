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

require 'test_helper'

class ProgrammingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

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

require 'test_helper'

class AirplaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

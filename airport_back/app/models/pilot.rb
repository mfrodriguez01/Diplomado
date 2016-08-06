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
end

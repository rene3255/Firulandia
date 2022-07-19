# == Schema Information
#
# Table name: housekeepers
#
#  id          :integer          not null, primary key
#  address     :string           not null
#  conditions  :text             not null
#  description :text             not null
#  full_name   :string           not null
#  price       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_housekeepers_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class HousekeeperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

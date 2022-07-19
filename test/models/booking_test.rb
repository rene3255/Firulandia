# == Schema Information
#
# Table name: bookings
#
#  id              :integer          not null, primary key
#  confirmed       :boolean          default(FALSE)
#  end_date        :date             not null
#  full_name       :string           not null
#  pet_description :text             not null
#  price           :integer          not null
#  review          :text
#  start_date      :date             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  housekeeper_id  :integer          not null
#  user_id         :integer          not null
#
# Indexes
#
#  index_bookings_on_housekeeper_id  (housekeeper_id)
#  index_bookings_on_user_id         (user_id)
#
# Foreign Keys
#
#  housekeeper_id  (housekeeper_id => housekeepers.id)
#  user_id         (user_id => users.id)
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

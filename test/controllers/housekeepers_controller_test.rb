require "test_helper"

class HousekeepersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housekeeper = housekeepers(:one)
  end

  test "should get index" do
    get housekeepers_url
    assert_response :success
  end

  test "should get new" do
    get new_housekeeper_url
    assert_response :success
  end

  test "should create housekeeper" do
    assert_difference("Housekeeper.count") do
      post housekeepers_url, params: { housekeeper: { address: @housekeeper.address, conditions: @housekeeper.conditions, description: @housekeeper.description, full_name: @housekeeper.full_name, price: @housekeeper.price, user_id: @housekeeper.user_id } }
    end

    assert_redirected_to housekeeper_url(Housekeeper.last)
  end

  test "should show housekeeper" do
    get housekeeper_url(@housekeeper)
    assert_response :success
  end

  test "should get edit" do
    get edit_housekeeper_url(@housekeeper)
    assert_response :success
  end

  test "should update housekeeper" do
    patch housekeeper_url(@housekeeper), params: { housekeeper: { address: @housekeeper.address, conditions: @housekeeper.conditions, description: @housekeeper.description, full_name: @housekeeper.full_name, price: @housekeeper.price, user_id: @housekeeper.user_id } }
    assert_redirected_to housekeeper_url(@housekeeper)
  end

  test "should destroy housekeeper" do
    assert_difference("Housekeeper.count", -1) do
      delete housekeeper_url(@housekeeper)
    end

    assert_redirected_to housekeepers_url
  end
end

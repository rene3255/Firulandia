require "application_system_test_case"

class HousekeepersTest < ApplicationSystemTestCase
  setup do
    @housekeeper = housekeepers(:one)
  end

  test "visiting the index" do
    visit housekeepers_url
    assert_selector "h1", text: "Housekeepers"
  end

  test "should create housekeeper" do
    visit housekeepers_url
    click_on "New housekeeper"

    fill_in "Address", with: @housekeeper.address
    fill_in "Conditions", with: @housekeeper.conditions
    fill_in "Description", with: @housekeeper.description
    fill_in "Full name", with: @housekeeper.full_name
    fill_in "Price", with: @housekeeper.price
    fill_in "User", with: @housekeeper.user_id
    click_on "Create Housekeeper"

    assert_text "Housekeeper was successfully created"
    click_on "Back"
  end

  test "should update Housekeeper" do
    visit housekeeper_url(@housekeeper)
    click_on "Edit this housekeeper", match: :first

    fill_in "Address", with: @housekeeper.address
    fill_in "Conditions", with: @housekeeper.conditions
    fill_in "Description", with: @housekeeper.description
    fill_in "Full name", with: @housekeeper.full_name
    fill_in "Price", with: @housekeeper.price
    fill_in "User", with: @housekeeper.user_id
    click_on "Update Housekeeper"

    assert_text "Housekeeper was successfully updated"
    click_on "Back"
  end

  test "should destroy Housekeeper" do
    visit housekeeper_url(@housekeeper)
    click_on "Destroy this housekeeper", match: :first

    assert_text "Housekeeper was successfully destroyed"
  end
end

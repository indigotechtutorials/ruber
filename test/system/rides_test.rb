require "application_system_test_case"

class RidesTest < ApplicationSystemTestCase
  setup do
    @ride = rides(:one)
  end

  test "visiting the index" do
    visit rides_url
    assert_selector "h1", text: "Rides"
  end

  test "should create ride" do
    visit rides_url
    click_on "New ride"

    fill_in "Customer", with: @ride.customer_id
    fill_in "Dropoff location", with: @ride.dropoff_location
    fill_in "Pickup location", with: @ride.pickup_location
    click_on "Create Ride"

    assert_text "Ride was successfully created"
    click_on "Back"
  end

  test "should update Ride" do
    visit ride_url(@ride)
    click_on "Edit this ride", match: :first

    fill_in "Customer", with: @ride.customer_id
    fill_in "Dropoff location", with: @ride.dropoff_location
    fill_in "Pickup location", with: @ride.pickup_location
    click_on "Update Ride"

    assert_text "Ride was successfully updated"
    click_on "Back"
  end

  test "should destroy Ride" do
    visit ride_url(@ride)
    click_on "Destroy this ride", match: :first

    assert_text "Ride was successfully destroyed"
  end
end

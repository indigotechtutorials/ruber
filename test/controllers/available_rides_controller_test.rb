require "test_helper"

class AvailableRidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get available_rides_index_url
    assert_response :success
  end
end

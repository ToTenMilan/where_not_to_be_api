require 'test_helper'

class Users::AdPointsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get users_ad_points_update_url
    assert_response :success
  end

end

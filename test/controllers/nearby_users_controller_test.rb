require 'test_helper'

class NearbyUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nearby_users_index_url
    assert_response :success
  end

end

require 'test_helper'

class PointOfInterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get point_of_interests_index_url
    assert_response :success
  end

end

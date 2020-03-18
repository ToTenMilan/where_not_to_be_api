require 'test_helper'

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get advertisements_create_url
    assert_response :success
  end

end

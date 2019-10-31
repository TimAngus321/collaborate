require 'test_helper'

class ChannelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get channels_show_url
    assert_response :success
  end

end

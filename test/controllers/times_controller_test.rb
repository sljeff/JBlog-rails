require 'test_helper'

class TimesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get times_show_url
    assert_response :success
  end

end

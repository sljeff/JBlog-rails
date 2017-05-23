require 'test_helper'

class TimesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get '/t/20160101-20161231'
    assert_response :success
  end

  # test "should not get any article in wrong tme" do
    # get '/t/20150102-20150101'
    
  # end
end

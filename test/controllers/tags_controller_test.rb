require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tags_show_url
    assert_response :success
  end

  test "should get create" do
    get tags_create_url
    assert_response :success
  end

  test "should get destory" do
    get tags_destory_url
    assert_response :success
  end

end

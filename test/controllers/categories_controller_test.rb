require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get categories_show_url
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

  test "should get destory" do
    get categories_destory_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

end

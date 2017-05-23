require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get 404 when category name not exists" do
    get '/c/not_exists_name'
    assert_response 404
  end

  test "should get OK when category name exists" do
    get '/c/computer'
    assert_response 200
    assert_template 'categories/show'
  end
end

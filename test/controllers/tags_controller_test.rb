require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get OK when tag slug exists" do
    get '/tags/history'
    assert_response 200
    assert_template 'tags/show'
  end

  test "should get 404 when tag slug not exists" do
    get '/tags/not_exists'
    assert_response 404
  end
end

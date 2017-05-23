require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "get 404 when slug not exists" do
    get '/a/there_is_not_this'
    assert_response 404
  end

  test "get OK when slug exists" do
    get '/a/IO_multiplexing'
    assert_response 200
    assert_template 'articles/show'
  end
end

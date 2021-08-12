require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get authors_edit_url
    assert_response :success
  end

end

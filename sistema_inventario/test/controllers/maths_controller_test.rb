require 'test_helper'

class MathsControllerTest < ActionDispatch::IntegrationTest
  test "should get mostrar_suma" do
    get maths_mostrar_suma_url
    assert_response :success
  end

end

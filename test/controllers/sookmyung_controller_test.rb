require 'test_helper'

class SookmyungControllerTest < ActionController::TestCase
  test "should get csvsaves" do
    get :csvsaves
    assert_response :success
  end

end

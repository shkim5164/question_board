require 'test_helper'

class YahakControllerTest < ActionController::TestCase
  test "should get make" do
    get :make
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end

require 'test_helper'

class SenseiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get analyze" do
    get :analyze
    assert_response :success
  end

end

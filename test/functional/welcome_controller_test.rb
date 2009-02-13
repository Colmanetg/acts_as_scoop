require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def test_index 
    get :index 
    assert_response :success 
   end
end

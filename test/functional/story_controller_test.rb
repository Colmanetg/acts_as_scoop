require 'test_helper'

class StoryControllerTest < ActionController::TestCase
  fixtures :stories
  # Replace this with your real tests.
  def test_index 
    get :index 
    assert_response :success 
  end 
  def test_show 
     get :show, :id => stories(:stories180).id 
     assert_response :success 
  end
  
end

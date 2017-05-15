require 'test_helper'

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
    log_in_as(@user)
  end

end

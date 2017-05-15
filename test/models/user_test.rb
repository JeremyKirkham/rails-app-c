require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test "A user must have a first name" do
    assert_equal @user.first_name, "Jeremy"
    @user.first_name = nil
    assert_not @user.valid?
  end

  test "A user must have a last name" do
    assert_equal @user.last_name, "Kirkham"
    @user.last_name = nil
    assert_not @user.valid?
  end
end

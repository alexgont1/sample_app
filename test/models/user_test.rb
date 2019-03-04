require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid? #check model User file (app/models/user.rb), if file is empty this assert=true always
  end
  
  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 30 #here our name is too long (in user.rb max length=29)
    assert_not @user.valid? #so @user is invalid and with 'assert_not' test returns 'true'
  end

  test "email should not be too long" do
    @user.email = "a" * 30 + "@example.com"
    assert_not @user.valid?
  end
end

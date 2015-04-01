require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "jeff", email: "jeff@jeff.jeff");
  end
  
  test "chef should be valid" do 
    assert @chef.valid?
  end
  
test "chefname should be present" do
  @chef.chefname=" "
  assert_not @chef.valid?
end

test "chefname"

test "chefname max is 50 char" do
  @chef.chefname="a"*51
  assert_not @chef.valid?
end

test "email must exist" do
  @chef.email=" "
  assert_not @chef.valid?
end

test "email must have @" do
  @chef.email="the.jeff.morrisongmail.com"
  assert_not @chef.valid?
end


end
require 'test_helper'

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should always have name" do
    staff = Staff.new
        staff.name = ""
        assert !staff.save, "Saved the staff without a name"
  end

  test "should always have name less than 256 characters" do
        staff = Staff.new
        staff.name = "a"*256
        assert !staff.save, "Saved staff with a name more than 256 characters"
  end

  test "should always have content in description" do
    staff = Staff.new
        staff.description = ""
        assert !staff.save, "Saved staff without the description"
  end

  test "should have description less than 1000 characters" do
    staff = Staff.new
        staff.description = "a"*1000
        assert !staff.save, "Saved the course with a description with more than 1000 characters"
  end
  
end

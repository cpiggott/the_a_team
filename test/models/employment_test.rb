require 'test_helper'

class EmploymentTest < ActiveSupport::TestCase
  test "should always have position" do
    employment = Employment.new
      employment.position = ""
      assert !employment.save, "Saved the employment without a position"
  end

  test "should always have a position less than 256 characters" do
    employment = Employment.new
      employment.position = "a"*256
      assert !employment.save, "Saved the employment with a position more than 256 characters"
  end

  test "should always have company" do
    employment = Employment.new
      employment.company = ""
      assert !employment.save, "Saved the employment without a company"
  end

  test "should always have company less than 256 characters" do
    employment = Employment.new
      employment.company = "a"*256
      assert !employment.save, "Saved the employment with a company longer than 256 characters"
  end

  test "should always have description" do
    employment = Employment.new
      employment.description = ""
      assert !employment.save, "Saved the employment without a description"
  end

  test "should always have description less than 256 characters" do
    employment = Employment.new
      employment.description = "a"*256
      assert !employment.save, "Saved the employment with a descriptions longer than 256 character"
  end



end

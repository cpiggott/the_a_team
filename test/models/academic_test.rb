require 'test_helper'

class AcademicTest < ActiveSupport::TestCase
  

  test "should always have name" do
    academic = Academic.new
        academic.name = ""
        assert !academic.save, "Saved the academics without a number"
  end

  test "should always have name less than 256 characters" do
        academic = Academic.new
        academic.name = "a"*256
        assert !academic.save, "Saved the academic courses with a name more than 256 characters"
  end

  test "should always have content in description" do
    academic = Academic.new
        academic.description = ""
        assert !academic.save, "Saved the academics courses without the description"
  end

  test "should have description less than 256 characters" do
    academic = Academic.new
        academic.description = "a"*256
        assert !academic.save, "Saved the academic courses with a description with more than 256 characters"
  end
end

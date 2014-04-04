require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "should always have number" do
    course = Course.new
        course.number = ""
        assert !course.save, "Saved the course without a name"
  end

  test "should always have name" do
    course = Course.new
        course.name = ""
        assert !course.save, "Saved the course without a number"
  end

  test "should always have name less than 256 characters" do
        course = Course.new
        course.name = "a"*256
        assert !course.save, "Saved the course with a name more than 256 characters"
  end

  test "should always have content in description" do
    course = Course.new
        course.description = ""
        assert !course.save, "Saved the course without the description"
  end

  test "should have description less than 256 characters" do
    course = Course.new
        course.description = "a"*256
        assert !course.save, "Saved the course with a description with more than 256 characters"
  end

end

require 'test_helper'

class StudyTest < ActiveSupport::TestCase
  test "should always have name" do
    study = Study.new
	study.name = ""
	assert !study.save, "Saved the study without a name" 
  end
  
  test "should always have name less than 256 characters" do
    study = Study.new
	study.name = "a"*256
	assert !study.save, "Saved the study with a name more than 256 characters"
  end
  
  test "should always have date" do
    study = Study.new
	study.date = nil
	assert !study.save, "Saved the study without a date"
  end
  
  test "should always have content in description" do
    study = Study.new
	study.description = ""
	assert !study.save, "Saved the study without the description"
  end
  
  test "should have description less than 256 characters" do
    study = Study.new
	study.description = "a"*256
	assert !study.save, "Saved the study with a description with more than 256 characters"
  end
  
  test "should always have content in location" do
    study = Study.new
	study.location = ""
	assert !study.save, "Saved the study without the location"
  end
  
  test "should have location less than 256 characters" do
    study = Study.new
	study.location = "a"*256
	assert !study.save, "Saved the study with a location with more than 256 characters"
  end
  
end

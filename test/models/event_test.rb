require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should always have name" do
    event = Event.new
	event.name = ""
	assert !event.save, "Saved the event without a name" 
  end
  
  test "should always have name less than 256 characters" do
    event = Event.new
	event.name = "a"*256
	assert !event.save, "Saved the event with a name more than 256 characters"
  end
  
  test "should always have date" do
    event = Event.new
	event.date = nil
	assert !event.save, "Saved the event without a date"
  end
  
  test "should always have content in description" do
    event = Event.new
	event.description = ""
	assert !event.save, "Saved the event without the description"
  end
  
  test "should have description less than 256 characters" do
    event = Event.new
	event.description = "a"*256
	assert !event.save, "Saved the event with a description with more than 256 characters"
  end
  
  test "should always have content in location" do
    event = Event.new
	event.location = ""
	assert !event.save, "Saved the event without the location"
  end
  
  test "should have location less than 256 characters" do
    event = Event.new
	event.location = "a"*256
	assert !event.save, "Saved the event with a location with more than 256 characters"
  end
  
end

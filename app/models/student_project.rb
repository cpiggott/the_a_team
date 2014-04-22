class StudentProject < ActiveRecord::Base
  validates :student, presence: true
  validates :student, length: {minimum:1}
  validates :student, length: {maximum:1000}
 
  validates :time, presence: true
  validates :time, length: {minimum:1}
  validates :time, length: {maximum:1000}

  validates :topic, presence: true
  validates :topic, length: {minimum:1}
  validates :topic, length: {maximum:1000}
  
  validates :description, presence: true
  validates :description, length: {minimum:1}
  validates :description, length: {maximum:1000}
end

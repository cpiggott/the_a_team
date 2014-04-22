class Club < ActiveRecord::Base

validates :name, presence: true
  validates :name, length: {minimum:1}
  validates :name, length: {maximum:1000}
 
  validates :time, presence: true
  validates :time, length: {minimum:1}
  validates :time, length: {maximum:1000}

  validates :description, presence: true
  validates :description, length: {minimum:1}
  validates :description, length: {maximum:1000}
end

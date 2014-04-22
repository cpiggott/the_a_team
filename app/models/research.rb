class Research < ActiveRecord::Base

  validates :name, presence: true
  validates :name, length: {minimum:1}
  validates :name, length: {maximum:1000}
 
  validates :description, presence: true
  validates :description, length: {minimum:1}
  validates :description, length: {maximum:1000}

  validates :url, presence: true
  validates :url, length: {minimum:1}
  validates :url, length: {maximum:1000}
end

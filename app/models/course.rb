class Course < ActiveRecord::Base

  validates :number, presence: true
  validates :number, length: {minimum: 1}
  validates :number, length: {maximum: 1000}

  validates :name, presence: true
  validates :name, length: {minimum: 1}
  validates :name, length: {maximum: 1000}

  validates :description, presence: true
  validates :description, length: {minimum: 1}
  validates :description, length: {maximum: 1000}

end

class Event < ActiveRecord::Base
#<<<<<<< HEAD
  validates :name, presence: true
  validates :name, length: { minimum: 1}
  validates :name, length: { maximum: 256}
  
  validates :date, presence: true
  
  validates :description, presence: true
  validates :description, length: { minimum: 1}
  validates :description, length: { maximum: 256 }
  
  validates :location, presence: true
  validates :location, length: { minimum: 1}
  validates :location, length: { maximum: 256}
#=======

#>>>>>>> 8740504ba99eb41e191e0b7105b7a06db8ad1e98
end

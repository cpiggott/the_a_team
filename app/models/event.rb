class Event < ActiveRecord::Base

  def start_time
    date
  end

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

end

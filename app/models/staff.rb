class Staff < ActiveRecord::Base


  validates :name, presence: true
  validates :name, length: {minimum: 1}
  validates :name, length: {maximum: 256}

  validates :description, presence: true
  validates :description, length: {minimum: 1}
  validates :description, length: {maximum: 1000}

end

class Employment < ActiveRecord::Base

  validates :position, presence: true
  validates :position, length: {minimum:1}
  validates :position, length: {maximum:1000}
 
  validates :company, presence: true
  validates :company, length: {minimum:1}
  validates :company, length: {maximum:1000}

  validates :description, presence: true
  validates :description, length: {minimum:1}
  validates :description, length: {maximum:1000}


end

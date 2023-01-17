class Task < ApplicationRecord


  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 65_500 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  

  

end

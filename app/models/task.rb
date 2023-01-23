class Task < ApplicationRecord


  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 65_500 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  
  validate :start_end_check

  def start_end_check
    errors.add(:end_date, "は開始日より前の日付は登録できません。") unless
    self.start_date < self.end_date 
  end
  
  validates :start_date, presence: true
  validates :end_date, presence: true
end

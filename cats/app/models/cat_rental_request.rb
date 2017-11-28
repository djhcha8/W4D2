class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED) }
  validate :overlapping_requests
  belongs_to :cat, dependent: :destroy
  
  def overlapping_requests
    s_date = self.start_date
    e_date = self.end_date
    
    CatRentalRequest.where("#{table_name}.start_date < ? AND #{table_name}.end_date > ? AND #{table_name}.id != #{self.id}", s_date, e_date)
    
  end
  
end 
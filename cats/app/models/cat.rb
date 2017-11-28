class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: %w(black white red gray brown calico), message: "%{value} is not a valid color"}
  validates :sex, inclusion: { in: ['M','F'] }
  
  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    dependent: :destroy
  
  def age
    Time.now.to_date.year - birth_date.year
  end
end
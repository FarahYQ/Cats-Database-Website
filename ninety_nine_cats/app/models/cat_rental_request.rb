# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
  validates :start_date, :end_date, presence: true 
  validates :status, inclusion: { in: ["PENDING", "APPROVED", "DENIED"]}, presence: true
  
  
  
  belongs_to :cat, 
  primary_key: :id, 
  foreign_key: :cat_id,
  class_name: :Cat
  
  
  def overlapping_requests 
    
    overlapping_dates = CatRentalRequest.where("cat_rental_requests.cat_id = ?", cat_id)
      .where("cat_rental_requests.id != ?", id)
      .where.not( "cat_rental_requests.start_date > ? OR cat_rental_requests.end_date < ?", end_date, start_date)
    # return false if overlapping_dates.empty? 
    # true 
    !overlapping_dates.empty?
    
  end 
  
  
  
end

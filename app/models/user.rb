class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validate :limit_seven_records, on: :create
  
   
  
    private
  
    def limit_seven_records
      return unless User.count >= 7
  
      errors.add(:base, "Only seven records can be saved.")
    end
  end
  
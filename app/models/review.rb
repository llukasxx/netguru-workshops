class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates_presence_of :user_id, :content, :rating
  validates :rating, inclusion: { in: 1..5, message: "The rating must be between 1 and 5" }

end

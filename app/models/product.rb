class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :description, :price
  validate :two_decimal_places

  def average_rating
  	rates = reviews.map(&:rating)
  	rates.sum.to_f / rates.size
  end

  private

  	def two_decimal_places
  		if price.present? && price.to_s.split('.').last.size > 2
  			errors.add(:price, "Number of decimal points can't be greater than 2")
  		end
  	end
end

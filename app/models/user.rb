class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :products, dependent: :destroy

  validates_presence_of :firstname, :lastname

  def last_reviews
    reviews.order(created_at: :desc).limit(5)
  end


end

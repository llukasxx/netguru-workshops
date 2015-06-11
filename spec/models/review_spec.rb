require 'spec_helper'

describe Review do
  describe 'validations' do
    it { should validate_presence_of :content }
    it { should validate_presence_of :rating }
    it { should validate_presence_of :user_id }
    it { should belong_to :user }
  end

  describe 'assignment' do
    let(:user)    { create(:user) }
    let(:product)    { create(:product) }
    it "has proper user" do
      review = user.reviews.build(content: "Very bad thing", rating: 1, 
                                  product_id: product.id)
      expect(review.user_id).to eq user.id
    end
  end
end

require 'spec_helper'

describe Review do
  describe 'validations' do
    it { should validate_presence_of :content }
    it { should validate_presence_of :rating }
    it { should validate_presence_of :user_id }
    it { should belong_to :user }
  end

  describe 'assignments' do
    let(:user)    { create(:user) }
    let(:product)    { create(:product) }
    it "has proper user" do
      review = user.reviews.create(content: "Very bad thing", product_id: product.id)
      expect(review.user_id).to eq user.id
    end
  end
end

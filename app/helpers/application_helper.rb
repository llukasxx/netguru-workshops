module ApplicationHelper
  def is_admin?(user)
    user.admin? unless user.nil?
  end

  def is_owner?(user, product)
    user.id == product.user_id unless user.nil?
  end
end

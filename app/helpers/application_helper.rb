module ApplicationHelper
  def is_admin?(user)
    user.admin?
  end

  def is_owner?(user, product)
    user.id == product.user_id
  end
end

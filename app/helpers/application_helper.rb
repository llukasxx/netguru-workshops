module ApplicationHelper
  def is_admin?(user)
    if !user.nil? 
      user.admin?
    end
  end

  def is_owner?(user, product)
    user.id == product.user_id
  end
end

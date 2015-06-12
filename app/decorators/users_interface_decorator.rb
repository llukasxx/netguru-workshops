class UsersInterfaceDecorator < Draper::Decorator
  delegate_all

  def print_admin
    if admin?
      "Admin"
    else
      "Normal"
    end
  end

  def product_count
    products.count
  end

  def review_count
    reviews.count
  end

end

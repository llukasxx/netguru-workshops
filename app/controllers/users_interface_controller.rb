class UsersInterfaceController < ApplicationController

  expose_decorated(:user, decorator: UsersInterfaceDecorator)
  expose_decorated(:users, decorator: UsersInterfaceDecorator)

  def index
  end

  def show
  end
end

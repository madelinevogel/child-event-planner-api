class ChildrenController < ApplicationController
  def index
    @children = current_user.children
    render :index
  end

  def create
    @child = Child.create(
      name: params[:name],
      image: params[:image],
      user_id: params[:user_id],
    )
    render :show
  end

  def show
    @child = Child.find_by(id: params[:id])
    render :show
  end
end

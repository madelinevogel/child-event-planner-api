class ChildrenController < ApplicationController
  def index
    @children = Child.all
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
end

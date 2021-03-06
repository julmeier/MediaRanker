class UsersController < ApplicationController
  def index
    @users = User.order(:created_at)
  end

  def show
    @user = User.find_by_id(params[:id])
    @user_votes = Vote.where(user_id: params[:id])
  end

end

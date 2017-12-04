class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users, :include => {:snippets => {:only => [:content,:title, :url]}}, :except => [:created_at, :updated_at]
  end

  def show
    @user = User.all.first
    render json: @user, :include => {:snippets => {:only => [:content,:title, :url]}}, :except => [:created_at, :updated_at]
  end
end

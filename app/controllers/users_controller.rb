# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @user = params[:username].present? ? User.find_by!(username: params[:username]) : current_user
  end

  def discover
    @user = User.find_by!(username: params.fetch(:username))
  end
end

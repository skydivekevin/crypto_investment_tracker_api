class SessionsController < ApplicationController
  
  before_action :set_current_user, only: [:logged_in]

  def set_current_user 
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      render json: { message: "Could not set current user sessionsController" }
    end
  end

  def create
    user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
      session[:user_id] = user.id
      render json: { status: :created, logged_in: true, user: user }
  end

  def logged_in
    if @current_user
      render json: { logged_in: true, user: @current_user }
    else
      render json: { logged_in: false, message: "Not logged in: sessions controllers#logged_in, route: /logged_in" }
    end
  end

  # def logout
  #   reset_session
  #   render json: { status: 200, logged_out: true }
  # end
end
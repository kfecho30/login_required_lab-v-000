class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end
end

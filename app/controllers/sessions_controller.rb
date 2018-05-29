class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    end
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end
end

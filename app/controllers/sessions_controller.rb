class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.destroy
    redirect_to '/sessions/new'
  end
end

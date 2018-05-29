class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
    end
  end

  def delete
    session.destroy
    redirect_to '/sessions/new'
  end
end

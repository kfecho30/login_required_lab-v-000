class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/new'
    end
  end

  def destroy
    session.destroy
    redirect_to '/new'
  end
end

class SecretsController < ApplicationController
  before_action 
  def show
    if current_user 
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end

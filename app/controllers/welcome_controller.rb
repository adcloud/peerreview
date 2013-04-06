class WelcomeController < ApplicationController

	#TODO Why? shouldnt this just be for a POST request
  protect_from_forgery :except => :start 
  
  def index
  end
  
  def start
    email = env['omniauth.auth']['info']['email']
    p 'Found ' + email
    session[:user_id] = email
    user = User.where('email = ?', session[:user_id]).first
    session[:user_admin] = !user.nil? && user.admin
  end

end

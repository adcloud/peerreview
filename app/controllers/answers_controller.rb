class AnswersController < ApplicationController

  # GET /answers
  def index
    @members = Member.all
  end

  # GET /list
  def show
    @allowed_members = session[:user_admin] ? Member.all : Member.where('email = ?', session[:user_id])
    if @allowed_members.include?(Member.find(params[:member_id])) 
      @answers = Answer.where('for_member_id = ?', params[:member_id])
    else
      redirect_to :back 
    end

  end

end

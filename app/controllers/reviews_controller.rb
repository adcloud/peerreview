class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @members = session[:user_admin] ? Member.all : Member.where('email = ?', session[:user_id])
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)

    role = @review.member.role
    teamMembers = Member.where(team_id: @review.member.team_id)
    teamMembers.each do | member |
      questions = Question.where(fromrole: role, forrole: member.role)
      questions.each do | question |
        a = Answer.create({ from_member_id: @review.member.id, for_member_id: member.id, question: question});
        @review.answers << a
      end
    end
    # self perception
    questions = Question.where(forrole: @review.member.role)
    questions.each do | question |
      #right question
      a = Answer.create({ from_member_id: @review.member.id, for_member_id: @review.member.id, question: question});
      @review.answers << a
    end


    if @review.save
      redirect_to controller: 'reviews', action: 'fill_out_review', id: @review.id
    else
      render action: 'new'
    end
  end

  def fill_out_review
    @review = Review.find(params[:id])
    @sorted_answers = {};
    current_member_id = @review.answers.first.for_member.id
    @sorted_answers[current_member_id] = {};
    @review.answers.each do |answer|
      if current_member_id != answer.for_member.id
        current_member_id = answer.for_member.id
        @sorted_answers[current_member_id] = {}
      end
      if @sorted_answers[current_member_id][answer.question.section] == nil
        @sorted_answers[current_member_id][answer.question.section] = [];
      end
      @sorted_answers[current_member_id][answer.question.section] << answer
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      #TODO notice doesn't work
      #redirect_to controller: 'reviews', action: 'fill_out_review', notice: 'Review was successfully updated.', id: @review.id
      redirect_to controller: 'reviews', action: 'fill_out_review', id: @review.id
    else
      render action: 'edit'
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
    redirect_to reviews_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:member_id, :finished, answers_attributes: [:text, :id])
    end
end

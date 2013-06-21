class ReviewCreationService

  def initialize(review)
    @review = review
  end

  def call
    role = @review.member.role
    teamMembers = Member.where(team_id: @review.member.team_id)
    answers = []
    teamMembers.each do | member |
      if member.id == @review.member.id
        # skip the reviewing user: all questions regarding her role
        # (self-perception) will be added below anyway.
        next
      end
      questions = Question.where(fromrole: role, forrole: member.role)
      questions.each do | question |
        a = Answer.create({ from_member_id: @review.member.id, for_member_id: member.id, question: question});
        answers << a
      end
    end
    # self perception
    questions = Question.where(forrole: @review.member.role)
    questions.each do | question |
      #right question
      a = Answer.create({ from_member_id: @review.member.id, for_member_id: @review.member.id, question: question});
      answers << a
    end
    return answers
  end

end
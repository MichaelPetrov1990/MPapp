class AnswersController < ApplicationController
  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @question = Question.find(params[question_id])
    @answer = Answer.new
  end
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.save!
  end
  def edit
    
  end
  
  private

  answer_params = params.require(:answer).permit(:rating)

end

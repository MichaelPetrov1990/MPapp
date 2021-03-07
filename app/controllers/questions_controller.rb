class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show

  end

  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @question = Question.new
  end

  def create
    @question = Question.new(strong_params)
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @question.questionnaire = @questionnaire
    @question.save!
    # CREATING OUR QUESTION THAT IS ASSOCIATED TO A QUESTIONNAIRE
  end

private

  def strong_params
    params.require(:question).permit(:body, :answer, :questionnaire_id)
  end

  def question_params
    params.permit(:id)
  end

  def prepare_question
   @question = Question.find(question_params)  
  end



end

class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

 def show
  @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @questionnaire = Questionnaire.find(params[:id])
    @question = Question.new(strong_params)
    # CREATING OUR QUESTION THAT IS ASSOCIATED TO A QUESTIONNAIRE
  end

  def edit
    @question
  end

  def update
  end

private

  def strong_params
    params.require(:question).permit(:body, :answer, :questionnaire_id)
  end



end

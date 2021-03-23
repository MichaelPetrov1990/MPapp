class QuestionnairesController < ApplicationController

  def new
    @questionnaire = Questionnaire.generate(current_user)
    @questions = @questionnaire.provide_unanswered_questions(3)
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  private

  def category_params
    params.permit(:category)
  end

end

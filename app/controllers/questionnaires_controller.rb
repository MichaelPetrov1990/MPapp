class QuestionnairesController < ApplicationController

  def new
    @questionnaire = Questionnaire.create!(user: current_user)
    questions = @questionnaire.provide_three_unanswered_questions unless @questionnaire.completed?
    @questionnaire.questions << questions
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  private

  def category_params
    params.permit(:category)
  end

end

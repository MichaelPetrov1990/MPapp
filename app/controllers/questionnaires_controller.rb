class QuestionnairesController < ApplicationController
  def index
    @questionnaire_category_options = ["health", "wealth","happiness"]
  end

  def new
    @questionnaire = Questionnaire.create!(category: category_params[:category], user: current_user)
    questions = Question.generate_three_questions(category_params[:category])
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
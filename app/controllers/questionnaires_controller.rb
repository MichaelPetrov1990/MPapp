class QuestionnairesController < ApplicationController

  def new
    @questionnaire = Questionnaire.create!(user: current_user)    
    ### grab 3 unasked questions from the Question table unless and until Questionnaire.completed? ###
    # questions = @questionnaire.provide_three_unanswered_questions unless @questionnaire.completed?
    # @questionnaire.questions << questions
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  private

  def category_params
    params.permit(:category)
  end

end
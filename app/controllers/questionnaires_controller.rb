class QuestionnairesController < ApplicationController
  def index
    @questionnaire_category_options = ["health", "wealth","happiness"]
  end

  def new
    @questionnaire = Questionnaire.create!(category: category_params[:category], user: current_user)
    questions = Question.generate_three_questions(category_params[:category])
    @questionnaire.questions << questions
    # was putting binding.pry here which was useful 
    #questionnaire now needs answer_rating to be created and I'm not sure that what i've done below is correct in any way
    questions.each do |question|
       Importance.create!(rating: rating_params[:rating], user_id: current_user, questionnaire_id: @questionnaire.id, question_id: question.id )
    end
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  private

  def category_params
    params.permit(:category)
  end

  def rating_params
    params.permit(:rating)
  end

end
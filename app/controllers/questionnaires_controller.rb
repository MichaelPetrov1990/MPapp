class QuestionnairesController < ApplicationController
  def index
    @questionnaire_category_options = ["health", "wealth","happiness"]
  end

  def new
    @questionnaire = Questionnaire.create!(category: category_params[:category], user: current_user)
    @questions = Question.where(category: category_params[:category]).sample(3)
    @questionnaire.questions << @questions
    @answer = Answer.new
    # @questionnaire.save
    # binding.pry
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  # def create
  #   @questionnaire = Questionnaire.new(questionnaire_params)
  #   if @questionnaire.save
  #     flash[:notice] = "Created successfully"
  #   redirect_to root_path
  #   else
  #     render 'new'
  #   end
  # end

  private

  def category_params
    params.permit(:category)
  end

end

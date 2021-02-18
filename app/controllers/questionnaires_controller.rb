class QuestionnairesController < ApplicationController
  def index
    @questionnaire_category_options = ["Health", "Wealth","Happiness"]
  end

  def new
    # binding.pry
    @questionnaire = Questionnaire.new(user: current_user)
    # todo: add category to this method by grabbing the users category choice from the params hash
    # eg @questionnaire = Questionnaire.create!(category: "Health", user: user)
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

class QuestionnairesController < ApplicationController
    
  def new
    @questionnaire = Questionnaire.new(user: current_user)
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

end

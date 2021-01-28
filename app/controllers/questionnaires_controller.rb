class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    if @questionnaire.save
      flash[:notice] = "Created successfully"
    redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @questionnaire.update(article_params)
      flash[:notice] = "Updated successfully"
      redirect_to @questionnaire
      else
        render 'edit'
      end
  end

  def destroy
    @questionnaire.delete
    redirect_to root_path
  end

  private

  def set_questionnaire
    @questionnaire = questionnaire.find(params[:id])
  end

  def questionnaire_params
    params.require(:questionnaire).permit(:category, :question1, :question2, :question3)
  end
end

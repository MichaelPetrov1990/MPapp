class AnswersController < ApplicationController
  def create
    @questionnaire = Questionnaire.find(questionnaire_params[:id])
    answer_params[:answers].each do |question_id, answer_rating|
      @questionnaire.answers.create!(user_id: current_user.id, question_id:question_id, rating: answer_rating)
    end
    render "show"
  end
  
  private

  def questionnaire_params
    params.require(:questionnaire).permit(:id)
  end

  def answer_params
    params.permit(:answers => {})
  end

end
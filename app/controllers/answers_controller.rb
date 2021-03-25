class AnswersController < ApplicationController
  def create
    @questionnaire = Questionnaire.find(questionnaire_params[:id])
    answer_text.each do |question_id, answer_rating|
      @questionnaire.answers.create!(user_id: current_user.id, question_id:question_id, rating: answer_rating)
    end
    weightings.each do |question_id, importance|
      @questionnaire.answers.find_by(question_id: question_id).update!(weight: importance)
    end
    redirect_to new_questionnaire_path and return unless @questionnaire.completed?
    render "plans/show"
  end
  
  private

  def questionnaire_params
    params.require(:questionnaire).permit(:id)
  end

  def answer_params
    params.permit(:answers => {})
  end

  def weightings
    answer_params.to_h.symbolize_keys[:answers].select{|k,v| k.include? "weight"}.map {|k,v| [k.split("-")[1],v]}
  end

  def answer_text
    answer_params.to_h.symbolize_keys[:answers].select{|k,v| k.include? "answer"}.map {|k,v| [k.split("-")[1],v]}    
  end

end
class AnswersController < ApplicationController
  before_action :assign_weights, only: [:show]
  before_action :update_answer_params, only: [:update]

  def create
    @questionnaire = Questionnaire.find(questionnaire_params[:id])
    answer_text_params.each do |question_id, answer_rating|
      @questionnaire.answers.create!(user_id: current_user.id, question_id:question_id, rating: answer_rating)
    end
    if @questionnaire.completed?
      @rating_and_answer_id = @questionnaire.lowest_ranking_answers(9)
      render "show"
    else
      redirect_to new_questionnaire_path and return    
    end
  end

  def show
    @answers = current_user.questionnaires.last.lowest_ranking_answers(3)
    # with radio buttons with labels (not important -> essential/critical)
  end

  def update
    @answer_ids.each_with_index do |id, index|
      answer = Answer.find(id)
      answer.update! weight: @values[index]
    end
  end
  
  private

  def update_answer_params
    @answer_ids = params.keys.select {|x| /[\d+]/.match? x }
    @values = params.require(@answer_ids)
  end


  def assign_weights
    @weightings = [ ["Not very important",2],["Has some importance",4],["Important",6],["Very important",8],["Essential/Critical",10] ]
  end

  def questionnaire_params
    params.require(:questionnaire).permit(:id)
  end

  def answer_params
    params.permit(:answers => {})
  end

  def weighting_params
    answer_params.to_h.symbolize_keys[:answers].select{|k,v| k.include? "weight"}.map {|k,v| [k.split("-")[1],v]}
  end

  def answer_text_params
    answer_params.to_h.symbolize_keys[:answers].select{|k,v| k.include? "answer"}.map {|k,v| [k.split("-")[1],v]}    
  end

end
class AnswersController < ApplicationController
  def create
    @questionnaire = Questionnaire.find(questionnaire_params[:id])
    answer_text.each do |question_id, answer_rating|
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
    # add a new route for weightings
    # create 1 new view: show.html.erb 
      # with radio buttons with labels (not important -> essential/critical)
    # update answer table with weighting integer
  end

  def update
    # weighting_params.each do |question_id, importance|
    #   @questionnaire.answers.find_by(question_id: question_id).update!(weight: importance)
    # end    
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
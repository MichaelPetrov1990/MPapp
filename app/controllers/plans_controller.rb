class PlansController < ApplicationController
  def show
   list = Questionnaire.last.answers.pluck(:rating, :question_id).sort.take(9) #gives us an array of arrays with each being rating and answer_id
   @rating_and_answer_id = []
   list.map do |answer|
     @rating_and_answer_id.push("#{Question.find(answer[1]).sub_category}:#{answer[0]}")
   end
  end
  
end

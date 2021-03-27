class PlansController < ApplicationController
  def show
   list = q.answers.pluck(:rating, :question_id).sort.take(9) #gives us an array of arrays with each being rating and answer_id
   @rating_and_answer_id = []
   list.map { |answer| @rating_and_answer_id << "#{Question.find(answer[1]).sub_category}:#{answer[0]}" }
  end
  
end

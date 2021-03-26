class PlansController < ApplicationController
  def show
   # @rating_and_answer_id = q.answers.pluck(:rating, :id).sort #gives us an array of arrays with each being rating and answer_id
   # rating_and_answer_id.map {|array| puts "Rating: #{array[0]} for subcategory: #{Question.find(Answer.last.question_id).sub_category}"}
  end
  
end

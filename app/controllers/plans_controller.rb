class PlansController < ApplicationController
  def show
    @questionnaire = current_user.questionnaires.where("completed").last
    @highest_answers = @questionnaire.answers.first(3)
    @lowest_answers = @questionnaire.answers.last(3)
  end
end
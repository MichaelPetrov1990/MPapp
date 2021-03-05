class AdminController < ApplicationController
  def questions
    @questions = Question.all
    @health_questions = Question.where(category: "health").order(sub_category: :desc)
    @wealth_questions = Question.where(category: "wealth").order(sub_category: :desc)
    @happiness_questions = Question.where(category: "happiness").order(sub_category: :desc)
  end

  def users
    
  end
end
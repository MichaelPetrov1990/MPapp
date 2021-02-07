class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # user gets asked a question
  # user submits answer via form

  # Scenario1 : User submits numerical answer
  # answer rating gets saved to db
  # answer ratings for a user are sorted from highest to lowest
  # view is rendered showing lowest rating 

  # Scenario2: User submits text-based answer
  # 
  # 
  # 
  # 
  # app returns lowest ranked answer/rating

end
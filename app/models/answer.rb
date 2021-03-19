class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :questionnaire
  has_one :importance
  # validates :score, inclusion: { in: 1..5 }
end
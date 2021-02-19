class Question < ApplicationRecord
  belongs_to :questionnaire, optional: true
  has_one :answer
end

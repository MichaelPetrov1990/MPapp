# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Questionnaire.destroy_all

tarun = User.create! email: "tarun@gmail.com", password: "hello123"
michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123"
priya = User.create! email: "priya.biring@gmail.com", password: "hello123"

[tarun,michael,priya].each do |user|
  questionnaire1 = Questionnaire.create!(category: "Health", user: user)
  question1 = questionnaire1.questions.create(body: "From 1 to 10, please rate your fitness")
  question2 = questionnaire1.questions.create(body: "Again please rate your physical health")
  question3 = questionnaire1.questions.create(body: "Rate your nutrition")

  questionnaire2 = Questionnaire.create(category: "Wealth", user: user)
  question1 = questionnaire2.questions.create(body: "From 1 to 10, please rate your financial fitness")
  question2 = questionnaire2.questions.create(body: "Again please rate your financial health")
  question3 = questionnaire2.questions.create(body: "Rate your financial nutrition")

  questionnaire3 = Questionnaire.create(category: "Happiness", user: user)
  question1 = questionnaire3.questions.create(body: "From 1 to 10, please rate your happy fitness")
  question2 = questionnaire3.questions.create(body: "Again please rate your happy health")
  question3 = questionnaire3.questions.create(body: "Rate your happy nutrition")

end
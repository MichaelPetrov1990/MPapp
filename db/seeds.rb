# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Questionnaire.destroy_all
Question.destroy_all

tarun = User.create! email: "tarun@gmail.com", password: "hello123"
michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123"
priya = User.create! email: "priya.biring@gmail.com", password: "hello123"

  health_question1 = Question.create(body: "From 1 to 10, please rate your fitness", category: "heath")
  health_question2 = Question.create(body: "Again please rate your physical health", category: "heath")
  health_question3 = Question.create(body: "Rate your nutrition", category: "heath")

  wealth_question1 = Question.create(body: "From 1 to 10, please rate your financial fitness", category: "weath")
  wealth_question2 = Question.create(body: "Again please rate your financial health", category: "weath")
  wealth_question3 = Question.create(body: "Rate your financial nutrition", category: "weath")

  happiness_question1 = Question.create(body: "From 1 to 10, please rate your happy fitness", category: "happiness")
  happiness_question2 = Question.create(body: "Again please rate your happy health", category: "happiness")
  happiness_question3 = Question.create(body: "Rate your happy nutrition", category: "happiness")
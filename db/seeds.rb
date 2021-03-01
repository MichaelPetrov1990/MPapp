# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Questionnaire.destroy_all
Question.destroy_all

tarun = User.create! email: "tarun@gmail.com", password: "hello123" first_name: "Tarun", last_name: "Mookhey"
michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123", first_name: "Michael", last_name: "Petrov"
priya = User.create! email: "priya.biring@gmail.com", password: "hello123" first_name: "Priya", last_name: "Biring"

  health_question1 = Question.create!(body: "From 1 to 10, please rate your fitness", category: "health")
  health_question2 = Question.create!(body: "Again please rate your physical health", category: "health")
  health_question3 = Question.create!(body: "Rate your nutrition", category: "health")

  wealth_question1 = Question.create!(body: "From 1 to 10, please rate your financial fitness", category: "wealth")
  wealth_question2 = Question.create!(body: "Again please rate your financial health", category: "wealth")
  wealth_question3 = Question.create!(body: "Rate your financial nutrition", category: "wealth")
 
  happiness_question1 = Question.create!(body: "From 1 to 10, please rate your happy fitness", category: "happiness")
  happiness_question2 = Question.create!(body: "Again please rate your happy health", category: "happiness")
  happiness_question3 = Question.create!(body: "Rate your happy nutrition", category: "happiness")
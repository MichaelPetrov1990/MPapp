# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
questionnaire1 = Questionnaire.create(category: "Health", question1: "From 1 to 10, please rate your fintness", question2: "Again please rate your mental health", question3: "Rate your nutrition")
questionnaire2 = Questionnaire.create(category: "Happiness", question1: "Rate your relationships", question2: "Rate your pleaure", question3: "Rate your interests")
questionnaire3 = Questionnaire.create(category: "Wealth", question1: "Rate your finances", question2: "Rate your social life", question3: "How well do you use your time?")
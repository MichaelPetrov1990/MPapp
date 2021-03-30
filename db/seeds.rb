# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Questionnaire.destroy_all
Question.destroy_all
  ali = User.create! email: "au@powerof.online", password: "hello123", first_name: "Alistair", last_name: "Upton", admin: true
  tarun = User.create! email: "tarun@gmail.com", password: "hello123", first_name: "Tarun", last_name: "Mookhey"
  michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123", first_name: "Michael", last_name: "Petrov"
  priya = User.create! email: "priya.biring@gmail.com", password: "hello123", first_name: "Priya", last_name: "Biring"
  t = "On a scale of 1 to 10, "

  health_question1 = Question.create!(body: "#{t}how would you assess your physical fitness?", category: "health", sub_category: "Fitness, active lifestyle and suppleness/flexibility")
  health_question2 = Question.create!(body: "#{t}how active is your lifestyle?", category: "health", sub_category: "Fitness, active lifestyle and suppleness/flexibility")
  health_question3 = Question.create!(body: "#{t}how would you rate your body suppleness and flexibility?", category: "health", sub_category: "Fitness, active lifestyle and suppleness/flexibility")
  health_question4 = Question.create!(body: "#{t}how well do you cope with stress or pressure?", category: "health", sub_category: "Day to day effectiveness, dealing with stress and interaction with others")
  health_question5 = Question.create!(body: "#{t}how able are you to work effectively and perform everyday tasks?", category: "health", sub_category: "Day to day effectiveness, dealing with stress and interaction with others")
  health_question6 = Question.create!(body: "#{t}how comfortably and effectively do you interact with other people?", category: "health", sub_category: "Day to day effectiveness, dealing with stress and interaction with others")
  health_question7 = Question.create!(body: "#{t}how healthy and balanced is your diet?", category: "health", sub_category: "Balanced diet, snacking and use of psychoactive substances(alcohol, caffeine, nicotine)")
  health_question8 = Question.create!(body: "#{t}how able are you to avoid snacking between meals?", category: "health", sub_category: "Balanced diet, snacking and use of psychoactive substances(alcohol, caffeine, nicotine)")
  health_question9 = Question.create!(body: "#{t}how healthy is your relationship with stimulants such as tobacco, alcohol, caffeine and meth?", category: "health", sub_category: "Balanced diet, snacking and use of psychoactive substances(alcohol, caffeine, nicotine)")

  wealth_question1 = Question.create!(body: "#{t}how would you rate your satisfaction with your personal financial sitution(level of savings, debt)?", category: "wealth", sub_category: "Personal finances, earnings and funding your lifestyle")
  wealth_question2 = Question.create!(body: "#{t}how content are you with your earnings?", category: "wealth", sub_category: "Personal finances, earnings and funding your lifestyle")
  wealth_question3 = Question.create!(body: "#{t}how satisfied are you with the lifestyle your earnings can fund?", category: "wealth", sub_category: "Personal finances, earnings and funding your lifestyle")
  wealth_question4 = Question.create!(body: "#{t}how mutually supportive is your family situation?", category: "wealth", sub_category: "Financial relationship with family, friends and work colleagues")
  wealth_question5 = Question.create!(body: "#{t}do you have friends who meet your social and emotional needs?", category: "wealth", sub_category: "Financial relationship with family, friends and work colleagues")
  wealth_question6 = Question.create!(body: "#{t}please rate the enjoyment and satisfaction you gain from your work colleagues.", category: "wealth", sub_category: "Financial relationship with family, friends and work colleagues")
  wealth_question7 = Question.create!(body: "#{t}do you have time for activities you love?", category: "wealth", sub_category: "Effective use of time, work/life balance and making time for activities")
  wealth_question8 = Question.create!(body: "#{t}how effective is your use of time?", category: "wealth", sub_category: "Effective use of time, work/life balance and making time for activities")
  wealth_question9 = Question.create!(body: "#{t}how would you rate your balance between work and life?", category: "wealth", sub_category: "Effective use of time, work/life balance and making time for activities")
 
  happiness_question1 = Question.create!(body: "#{t}how would you rate the frequency and quality of connection with those closest to you?", category: "happiness", sub_category: "Level of support, quality and depth of connection with those closest to you")
  happiness_question2 = Question.create!(body: "#{t}what's the level of support you give to and receive from those closest to you?", category: "happiness", sub_category: "Level of support, quality and depth of connection with those closest to you")
  happiness_question3 = Question.create!(body: "#{t}how deep is the connection with the person closest to you?", category: "happiness", sub_category: "Level of support, quality and depth of connection with those closest to you")
  happiness_question4 = Question.create!(body: "#{t}how much time do you devote to hobbies, interests and pastimes?", category: "happiness", sub_category: "Engagement with hobbies, new activities and travel")
  happiness_question5 = Question.create!(body: "#{t}please rate your engagment with new activities.", category: "happiness", sub_category: "Engagement with hobbies, new activities and travel")
  happiness_question6 = Question.create!(body: "#{t}how passionate are you about travel and new experiences?", category: "happiness", sub_category: "Engagement with hobbies, new activities and travel")
  happiness_question7 = Question.create!(body: "#{t}how would you rate your life-long learning and Continuous Professional Development?", category: "happiness", sub_category: "Continuous development, acquiring new skills and range of interests")
  happiness_question8 = Question.create!(body: "#{t}how quickly do you aquire new skills?", category: "happiness", sub_category: "Continuous development, acquiring new skills and range of interests")
  happiness_question9 = Question.create!(body: "#{t}how passionate are you about expanding your range of interests?", category: "happiness", sub_category: "Continuous development, acquiring new skills and range of interests")

  puts "Absolutely nailed it!"
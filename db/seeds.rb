# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Invitation.delete_all
Evaluation.delete_all

User.create!(
  email: "ppgod@live.cn",
  password: "12345678",
  nickname: "Alex",
  gender: "男",
  wechat: "NewbieGeek",
  github: "https://github.com/AlexpanXX",
  logdown: "https://alexpan-blog.logdown.com",
  role: "学员",
  is_admin: true
)

num = 0
100.times {
  User.create!(
  email: "student_" + (num += 1).to_s + "@live.cn",
  password: "12345678",
  nickname: "Student " + num.to_s,
  gender: num % 2 == 0 ? "男" : "女",
  wechat: "NewbieGeek",
  github: "https://github.com/AlexpanXX",
  logdown: "https://alexpan-blog.logdown.com",
  role: "学员"
  )
}

num = 0
50.times {
  User.create!(
  email: "teacher_" + (num += 1).to_s + "@live.cn",
  password: "12345678",
  nickname: "Teacher " + num.to_s,
  gender: num % 2 == 0 ? "男" : "女",
  wechat: "NewbieGeek",
  github: "https://github.com/AlexpanXX",
  logdown: "https://alexpan-blog.logdown.com",
  role: "老师"
  )
}

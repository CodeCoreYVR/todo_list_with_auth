# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.delete_all
User.delete_all 

NUM_TASK = 10
NUM_USER = 5
PASSWORD = "supersecret"

super_user = User.create(
    first_name: "Daniel",
    last_name: "O'brien",
    email: "do@maze.run",
    password: PASSWORD
)

NUM_USER.times do 
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: PASSWORD
    )
end

NUM_TASK.times do 
    created_at = Faker::Date.backward(days: 365 * 5)
    Task.create(
        title: Faker::Hacker.say_something_smart,
        created_at: created_at,
        updated_at: created_at
    )
end

tasks = Task.all
users = User.all 

puts Cowsay.say("Generate #{tasks.count} tasks", :bunny)
puts Cowsay.say("Generate #{users.count} users", :sheep)
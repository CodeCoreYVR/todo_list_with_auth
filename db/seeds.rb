# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.delete_all
NUM_TASK = 10

NUM_TASK.times do 
    created_at = Faker::Date.backward(days: 365 * 5)
    Task.create(
        title: Faker::Hacker.say_something_smart,
        created_at: created_at,
        updated_at: created_at
    )
end

task = Task.all 

puts Cowsay.say("Generate #{task.count} tasks", :bunny)
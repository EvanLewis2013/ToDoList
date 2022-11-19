# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "Creating tasks"
Task.destroy.all

task1 = Task.create(name: "Get Up")
task2 = Task.create(name: "Find pants")

puts "Tasks created"

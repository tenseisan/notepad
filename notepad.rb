require_relative 'post.rb'
require_relative 'memo.rb'
require_relative 'link.rb'
require_relative 'task.rb'

puts "Привет юзер!"
puts "Что хотите записать?"

choice = Post.post_types

user_choice = -1

until user_choice >= 0 && user_choice < choice.size do

  choice.each_with_index do |type, index|
    puts "\t #{type}. #{index}"
  end

  user_choice  =STDIN.gets.chomp.to_i
end

entry = Post.create(user_choice)

entry.read_from_console
entry.save

puts "Ура, запись сделана!"
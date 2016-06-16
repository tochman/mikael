def mikael
  puts 'Input coffee level: '
  coffee_level = gets.chomp.to_i

  if coffee_level == 100
    puts 'Mikael happy :)))'
  elsif coffee_level >= 50
    puts 'Mikael in a working state'
  else
    puts 'Mikael is a cranky, impatient, non-productive, barely conscious member of society'
  end
end

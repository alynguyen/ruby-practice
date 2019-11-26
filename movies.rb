movies = {
  Ready_Player_One: 4,
  "Ready Player One": 4
}

puts "What you wanna do"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "What is the title?"
    title = gets.chomp
    puts "What is the rating?"
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts movies
    else
      puts "Movie exists"
    end
  when "update"
    puts "What is the title?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie does not exist"
    else
      puts "Input new rating for #{title}"
      rating = gets.chomp
    end
  when "display"
    movies.each { |movie, rating|
      puts "#{movie}: #{rating}"    
    }
  when "delete"
    puts "What is the movie title?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie does not exist"
    else
      movies.delete(title.to_sym)
      puts "#{title} deleted!"
    end
else
    puts "Error!"
end
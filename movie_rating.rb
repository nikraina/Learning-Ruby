movies = {
    killbill: 4,
    pulpfiction: 5,
    rage: 5
}
puts "Please let us know what you want to do"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "Give the movie title"
    title = gets.chomp.downcase.to_sym
    if movies[title].nil?
      puts "Give the rating of the movie"
      rating = gets.chomp
      movies[title] = rating.to_i
      puts "The movie has been added"
    else
      puts "This movie already exists, nothing to add!"
    end
  when "update"
    puts "Please give the movie you want to edit"
    title = gets.chomp.downcase.to_sym
    if movies[title].nil?
      puts "The movie you entered does not exist, no Update to perform"
    else
      puts "Please give in the new rating for the movie"
      rating = gets.chomp.to_i
      movies[title] = rating
    end
  when "display"
    movies.each do |mov,rat|
      puts "#{mov}: #{rat}"
    end
  when "delete"
    puts "Please give the movie to be deleted"
    title = gets.chomp.downcase.to_sym
    if movies[title].nil?
      puts "The movie #{title} does not exist, No deletion done"
    else
      movies.delete(title)
    end
  else
    puts "Error!, wrong choice made, Now i will crash :'("
end
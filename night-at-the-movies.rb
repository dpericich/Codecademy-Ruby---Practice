# Exercise to practice working with hashes
# This exercise focuses on building hashes, type conversion methods, and case statements

movies = {
    catch_me_if_you_can: 4,
    jaws: 3,
    the_exorcist: 2
}

puts "What would you like to do today?"
puts "--Add a movie"
puts "--Retrieve a movie"
puts "--Modify a movie"
puts "--Delete a movie"

action = gets.chomp.downcase

case action
when "add"
    puts "Please enter your movie title"
    title = gets.chomp.to_sym
    puts "Please rate this movie [0-4]"
    rating = gets.chomp.to_i
    if movies[title]
        puts "Sorry, this title already exists!"
    else 
        movies[title] = rating
        puts "Movie successfully added!"
        puts "#{title}: #{rating}"
    end
when "update"
    puts "Please enter the title that you would like to update"
    title = gets.chomp.to_sym
    if movies[title]
        puts "The current rating for #{title} is  #{movies[title]}"
        puts "Please enter your new rating"
        new_rating = gets.chomp.to_i
        if new_rating > 4 || new_rating < 0
            puts "Sorry, that's not a valid rating"
        else 
            movies[title] = new_rating
            puts "Movie rating successfully added!"
            puts "#{title}: #{new_rating}"
        end
    else 
        puts "Sorry, we can't find that title in our db"
    end
when "display"
    movies.each do |movie, rating| 
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Please enter the movie title that you would like to store"
    title = gets.chomp.downcase.to_sym
    if movies[title]
        movies.delete(title)
        puts "Movie successfully deleted!"
    else 
        puts "Sorry, we can't find that title in our db"
    end
end 
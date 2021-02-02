# Program to create histograms from user input

# Prompt user input
puts "Please enter some text:"
text = gets.chomp

words = text.split(' ')

# Create frequency hash based off of the word counts
frequencies = Hash.new(0)

words.each { |word| 
    if frequencies[word] == 0 
        frequencies[word] = 1
    else 
        frequencies[word] += 1
    end
}

# Sort the hash by the count for each word
frequencies = frequencies.sort_by do  |word, count|
    count
end

# Reverse this sort to be descending instead of ascending
frequencies.reverse!

# Print out each word with its count
frequencies.each do |word, count| 
    puts word + " " + count.to_s
end

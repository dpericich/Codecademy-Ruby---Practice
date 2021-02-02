# Simple text based interactive app to redact user input based on parameters

# Ask for a string of input to check
puts "Enter some text: "
text = gets.chomp

redacted_words = []
# for num in 1..3 
#     puts "Enter  word to redact: "
#     redact = gets.chomp.downcase
#     redactedWords.push(redact)
# end

# Ask for 3 three words to redact from the statement
3.times {
    puts "Enter word to redact"
    redact = gets.chomp.downcase
    redacted_words.push(redact)
}

print redacted_words

# Create an iterable from the user input
words = text.split(" ")

# Code to print out the string with redacted words
# words.each { |word| 
#     if redactedWords.include?(word.downcase)
#         print "REDACT "
#     else 
#         print word + " "
#     end
# }

redacted_message = []

# Loop over the words and either return the word or the word redact
words.each { |word|
    if redacted_words.include?(word.downcase)
        redacted_message.push("REDACT")
    else 
        redacted_message.push(word)
    end
}

redacted_message = redacted_message.join(" ")

print redacted_message
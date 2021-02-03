# Create a method that orders an input array of book titles
# Based off the arguments, it will sort in alphabetical or inverse alphabetical order

# Function takes two arguments - an array to sort and a boolean to say if we sort in inc or desc order
def alphabetize(arr, rev=false)
    arr.sort!
    if rev == true
        return arr.reverse!
    else 
        return arr
    end
end

numbers = [3, 5, 2, 1, 7, 4]
direction = false

puts alphabetize(numbers, direction)
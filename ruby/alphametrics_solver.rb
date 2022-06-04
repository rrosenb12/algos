# Alphametics is a type of cryptarithm in which a set of words is written down in the form of a long addition sum or some other mathematical problem. The objective is to replace the letters of the alphabet with decimal digits to make a valid arithmetic sum.
# For this kata, your objective is to write a function that accepts an alphametic equation in the form of a single-line string and returns a valid arithmetic equation in the form of a single-line string.
# Test Examples
# INPUT:    "SEND + MORE = MONEY"
# SOLUTION: "9567 + 1085 = 10652"
# INPUT:    "ELEVEN + NINE + FIVE + FIVE = THIRTY"
# SOLUTION: "797275 + 5057 + 4027 + 4027 = 810386"
# Some puzzles may have multiple valid solutions; your function only needs to return one
# BIG + CAT = LION
# 403 + 679 = 1082
# 326 + 954 = 1280
# 304 + 758 = 1062
# ...etc.

def alphametrics(puzzle)
    # Keep a hash to store each letter's integer value
    alpha_hash = {}
    # Split the puzzle string into an array
    unique_puzzle_array = puzzle.delete('+= ').split("").uniq
    # Make the first letter in puzzle 1
    alpha_hash[unique_puzzle_array[0]] = 1
    # Remove first letter
    unique_puzzle_array.shift()
    counter = 0
    # Add values to the alpha hash, skipping 1, since we already added 1
    unique_puzzle_array.each do |letter|
        if counter == 1
            counter += 1
        end
        alpha_hash[letter] = counter 
        counter += 1
    end
    
    alpha_puzzle = []

    # Add values to the alpha_puzzle array, which will contain the numerical value
    puzzle.each_char do |char|
        # If the character has a numeric value, add the numeric value
        if alpha_hash[char]
            alpha_puzzle << alpha_hash[char]
        # Otherwise just add the character (like +, =, spaces)
        else
            alpha_puzzle << char
        end
    end
    
    # return the joined string of the alpha_puzzle array
    return alpha_puzzle.join
end

print alphametrics("BIG + CAT = LION")
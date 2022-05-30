# Length of Last Word
# Given a string s consisting of some words separated by some number of spaces, return the length of the last word in the string.
# A word is a maximal substring consisting of non-space characters only.
# Example 1:
# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.
# Example 2:
# Input: s = " fly me to the moon "
# Output: 4
# Explanation: The last word is "moon" with length 4.
# Example 3:
# Input: s = "luffy is still joyboy"
# Output: 6
# Explanation: The last word is "joyboy" with length 6.

# Example 4:
# Input: s = "This is amazing!"
# Output: 6
# Explanation: The last word is "amazing" with length 7.

def length_of_last(word)
    return word.split(" ").last.delete('.!?,').length
end

puts length_of_last(" fly me to the moon ")
puts length_of_last("Hello World")
puts length_of_last("luffy is still joyboy")
puts length_of_last("This is amazing!")
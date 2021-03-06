# Problem Roman to Integer
# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M. Symbol Value
# I 1
# V 5
# X 10
# L 50
# C 100
# D 500
# M 1000
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX.
# There are six instances where subtraction is used:
# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.
# Input: s = "III"
# Output: 3
# Explanation: III = 3.
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').

def roman_to_int(roman)
    roman_conversions = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
    integer_value = 0
    n = 0
    roman.each_char do |numeral|   
        next_numeral = roman[n + 1]
        last_numeral = roman[n - 1]
        if n == 0 and numeral != "I" and numeral != "C" and numeral != "X"
            integer_value += roman_conversions[numeral]
        elsif n == 0 and (numeral == "C" or numeral == "X")
            if numeral == "X"
                if next_numeral == "L" or next_numeral == "C"
                    integer_value += roman_conversions[next_numeral] - roman_conversions[numeral]
                else 
                    integer_value += roman_conversions[numeral]
                end
            elsif numeral == "C"
                if next_numeral == "D" or next_numeral == "M"
                    integer_value += roman_conversions[next_numeral] - roman_conversions[numeral]
                else 
                    integer_value += roman_conversions[numeral]
                end
            end
        else 
            if numeral == "I" 
                if next_numeral == "V" or next_numeral == "X"
                    integer_value += roman_conversions[next_numeral] - roman_conversions[numeral]
                else
                    integer_value += roman_conversions[numeral]
                end
            elsif numeral == "V"
                if last_numeral != "I"
                    integer_value += roman_conversions[numeral]
                end
            elsif numeral == "X"
                if last_numeral != "I"
                    if next_numeral == "L" or next_numeral == "C"
                        integer_value += roman_conversions[next_numeral] - roman_conversions[numeral]
                    else 
                        integer_value += roman_conversions[numeral]
                    end
                end
            elsif numeral == "L"
                if last_numeral != "X"
                    integer_value += roman_conversions[numeral]
                end
            elsif numeral == "C"
                if last_numeral != "X"
                    if next_numeral == "D" or next_numeral == "M"
                        integer_value += roman_conversions[next_numeral] - roman_conversions[numeral]
                    else 
                        integer_value += roman_conversions[numeral]
                    end
                end
            elsif numeral == "D" or numeral == "M"
                if last_numeral != "C"
                    integer_value += roman_conversions[numeral]
                end
            end
        end
        n += 1
    end
    return integer_value
end

# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.

puts roman_to_int("MCMXCIV")
# 1994
puts roman_to_int("LVIII")
# 58
puts roman_to_int("III")
# 3
puts roman_to_int("CMLII")
# 952
puts roman_to_int("CDLXIX")
# 469
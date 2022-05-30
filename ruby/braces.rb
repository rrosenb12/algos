# Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.
#    All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.
#    "(){}[]" => True
#    "([{}])" => True
#    "(}" => False
#    "[(])" => False
#    "[({})](]" => False

def brace_sym(braces)
    brace_matches = {"(" => ")", "{" => "}", "[" => "]"}
    if braces.length % 2 != 0
        return false
    else 
        brace_array = braces.split("")
        tracker = []
        brace_array.each do |b|
            last_value = tracker[-1]
            if brace_matches.key?(b)
                tracker << b
            elsif brace_matches[last_value] == b
                tracker.pop
            end
        end
        return tracker.length == 0
    end
end

puts brace_sym("(){}[]")
puts brace_sym("([{}])")
puts brace_sym("(}")
puts brace_sym("[(])")
puts brace_sym("[({})](]")
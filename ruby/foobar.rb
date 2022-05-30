# Write a function called FooBar that takes input integer n and prints all the numbers from 1 up to n in a new line. If the number is divisible by 3 then print "Foo", if the number is divisible by 5 then print "Bar" and if the number is divisible by both 3 and 5, print "FooBar". Otherwise just print the number.

def FooBar(n)
    (1..n).each do |numb|
        if numb % 3 == 0 and numb % 5 == 0
            puts "FooBar"
        elsif numb % 3 == 0
            puts "Foo"
        elsif numb % 5 == 0
            puts "Bar"
        else 
            puts numb
        end
    end
end

FooBar(25)
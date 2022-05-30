# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
#    DNA_strand ("ATTGC") # return "TAACG"
#    DNA_strand ("GTAT") # return "CATA"

def DNA_strand(strand)
    complements = {"A" => "T", "T" => "A", "C" => "G", "G" => "C"}
    complementary_side = ""
    for sym in strand.split("")
        complementary_side += complements[sym]
    end
    return complementary_side
end

puts DNA_strand("AATGC")
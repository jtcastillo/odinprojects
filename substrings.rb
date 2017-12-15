#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was  found in the original string and how many times it was found.

def substrings(phrase,dictionary)
    phrase = phrase.downcase.gsub(/[[:punct:]]/, '').split(" ")
    dictionary_hash = Hash.new

    #Look at each dictionary word, set its equivalent hash key value to 0. Use an each loop and regex to search through each word in the phrase for a match. If found, increase quantity by one and continue looking until end of phrase. Then go to next word.
    dictionary.each do |dict_word|
        dictionary_hash[dict_word] = 0
        phrase.each do |compare_word|
            if compare_word =~ /#{dict_word}/
                dictionary_hash[dict_word] += 1
            end
        end
        #remove words from dictionary hash if they turn up 0 matches
        dictionary_hash.delete_if {|key, value| value == 0 }    
    end
    #display output
    dictionary_hash.each {|key, value| puts "#{key.ljust(10)} #{value}"}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?",dictionary)

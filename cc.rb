def caesar_cipher(string, number=3)
    string_array = string.split("")
    encoded_array = []
    upper_top = 90 + number
    lower_top = 122 + number
    string_array.each do |x|
        if x == " "
            encoded_array.push(x)
        else
            key = x.ord
            if key.between?(65,90)
                key + number <= 90 ? key = key + number : key = key + number -  26
            elsif key.between?(97,122)
                key + number <= 122 ? key = key + number : key = key + number - 26
            else
                puts "else"
            end
            x = key.chr
            encoded_array.push(x)
        end
    end
    encoded_array.to_s
    puts encoded_array.join("")
end

caesar_cipher("The quick brown fox jumps over the lazy dog",10)

def caesar_cipher(string, shift=0)
    
    shift = shift % 26

    unencoded_message = string.split("")
    encoded_message = []
    
    unencoded_message.each do |x|
        x = x.ord
        if x.between?(65,90)
            x + shift <= 90 ? x = x + shift : x = x + shift - 26
        elsif x.between?(97,122)
            x + shift <= 122 ? x = x + shift : x = x + shift - 26
        end
        encoded_message.push(x.chr)
    end
    puts encoded_message.join("")
end

puts "Enter a phrase:"
phrase = gets.chomp
puts "How many letters do you want to shift by?"
shift  = gets.chomp.to_i

caesar_cipher(phrase,shift)

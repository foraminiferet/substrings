def substrings(string,dictionary)
array_word=string.downcase!.split(" ")
array_word.reduce(Hash.new(0)) do |hash,word|
    dictionary.each do |dictionary_word|
            if word.include?(dictionary_word)
            hash[dictionary_word]+=1
            end
       end
    hash
    end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Write anything: "
input=gets.chomp
substrings(input,dictionary)
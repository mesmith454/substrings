dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    #  hash to store matched
    match_hash = Hash.new
    # make case insensitive
    str = string.downcase
    # for each word in dictionary array scan str for occurance. If it is included add to hash with times occured
    dictionary.each do |word|
        # .scan scans string for matches
        # .length breaks down string size, helps find word within word 
        match_hash[word] = str.scan(word).length if str.include?(word)
    end
    match_hash
end

string = "Howdy partner, how's it going down there?"

p substrings(string, dictionary)
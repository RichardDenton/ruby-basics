def substrings (text, dictionary)
  # Split the text into individual words and assign to an array
  words = text.split(' ')

  # Cycle through each word to check for substrings from the dictionary
  # Increment the substring count in the hash for each one found
  substring_count = words.reduce(Hash.new(0)) do |count, word|
    dictionary.each do |substring|
      count[substring] += 1 if word.downcase.include? substring.downcase
    end
  count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
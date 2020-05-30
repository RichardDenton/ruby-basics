words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon', 'cowl']

def find_anagrams(words)  
    anagram_hash = words.reduce(Hash.new { |h, k| h[k] = [] }) do |anagrams, word|
      anagrams[word.split(//).sort.join].push(word)
      anagrams
    end
    # Delete single entries
    anagram_hash.each { |key, anagrams| anagram_hash.delete(key) unless anagrams.length > 1 }
    anagram_hash
end

p find_anagrams(words).values
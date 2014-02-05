def combine_anagrams(words)
  groups=[]
  unique_words=Hash.new
  words.each do |m|
    word=m.downcase.chars.sort.join #sort the single word.
    if !unique_words.has_key?(word) #if the word exists in the hash table.
      unique_words[word]=[m] #initialize a new key.
    else
      unique_words[word]<<m
    end
  end
  unique_words.each do |m|
    groups<<m[1] #insert the list into groups.
  end
  return groups
end
print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])

def count_words(string)
  newString=string.downcase.gsub(/\W/, ' ').split(/\b/) #convert non-word characters into spaces and split the string into list by spaces.
  totalCount=Hash.new
  newString.each do |m|
    if !(m =~ /\W/) #if it is not a non-word character.
      if totalCount.has_key?(m) 
        totalCount[m]+=1
      else
        totalCount[m]=1 #if the character doesn't exist in the hash table, initialize the word
      end
    end
  end
  puts totalCount
end
count_words("A man, a plan, a canal -- Panama")
count_words("Doo bee doo bee doo")

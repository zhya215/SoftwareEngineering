def palindrome?(string)
    newString=string.downcase.gsub(/\W/, '')
    puts "#{newString == newString.reverse}"
end
palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")

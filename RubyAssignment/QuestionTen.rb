class String
def palindrome?
    newString=self.downcase.gsub(/\W/, '')
    return newString == newString.reverse
end
end
puts "foo".palindrome?
puts "abba".palindrome?

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    puts "Without method: reverse"
  end
end
puts [1,2,3,2,1].palindrome?

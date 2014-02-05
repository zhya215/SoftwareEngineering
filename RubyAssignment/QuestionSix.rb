def glob_match(filenames, pattern)
  new_pattern=pattern.gsub(/[\*\.]/, '*'=>'.*', '.'=>'\.') #Convert '*' into '.*', it means that matching zero or more characters. '.' has no meaning in the rule.
  regex=Regexp.new(new_pattern)
  names=[]
  filenames.each do |m|
    if regex === m
      names<<m
    end
  end
  return names
end

print glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')
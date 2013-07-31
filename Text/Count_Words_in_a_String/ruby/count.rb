wordCount = Hash[]

puts "Please enter words:"

input = gets.chomp
words = input.split(" ")
puts "There are #{words.length} words."

words.each do |word|
  if wordCount.has_key?(word)
    wordCount[word] += 1
  else
    wordCount[word] = 1
  end
end

sorted = wordCount.sort_by {|k,v| v}

highestFreq = sorted.pop
puts "The most frequent word is #{highestFreq[0]} which appears #{highestFreq[1]} time(s)."

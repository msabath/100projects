#!/usr/bin/env ruby

vowels = Hash[ "a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0]

puts "Enter a word:"
word = gets.chomp

word.split("").each do |i|
	if vowels.has_key?(i)
		vowels[i] += 1
	end
end

vowels.each {|key, value| puts "The count of #{key} is #{value}" }

arr = gets.chomp
#arr = word.each_char.to_a
#puts arr.inspect

arr_vowels = ["a","e","i","o","u"]

alpha = ('a'..'z').to_a
consonants = alpha - arr_vowels
counter = 0
while !arr_vowels.include?(arr[counter]) 
counter += 1
end 
puts arr[counter..arr.length] + arr[0..(counter-1)] + "ay"

puts arr + "ay"
  


#print consonants
#print arr.length
#index = 0
#while index < arr.length


 # puts index +=1

#puts arr.index('e')


#print arr.grep /[aeiou]/

# if arr.each_char == arr_volwels.each_char
#   return 
  
# end



#print wide
	
# while wide > 0 do
# wide -= 1
# #puts wide

# unless arr_vowels.include?(arr[0])
# 	 print arr << arr.shift << "ay\n"
	
#   break if wide == 3
# end

# end

# word.each_char do |c|
# 	unless arr_vowels.include?(c)
# 		arr << arr.shift << "ay\n"
# 	end
# end


#puts arr.join("")
		
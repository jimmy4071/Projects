def pig_latin_translator(string)

vowels = ["a","e","i","o","u"]
word = string.each_char.to_a

if vowels.include?(word[0])
 	puts "sorry, #{word} starts with a vowel, it cannot be converted to piglatin"
else

counter = 0 
while !vowels.include?(word[counter]) 
counter += 1
end 
final = word[counter..word.length] << word[0..(counter-1)] << "ay\n" 
piglatin = final.to_s
print piglatin

end 
end 

pig_latin_translator('hlpmkvvux')
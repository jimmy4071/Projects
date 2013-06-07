puts "Enter characters that the password contains"
characters = gets.chomp

File.open("dictionary.txt").each { |line| 
  unless characters.each_char.map  { |c| line.include?(c) }.include? false
    puts line;
  end
}


File.open('word.txt', 'w') do |f2|  
  # use "\n" for two lines of text  
  f2.puts "Created by Satish\nThank God!"  
end  
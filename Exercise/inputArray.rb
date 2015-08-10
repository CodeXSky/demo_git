puts 'Ruuuuubbbbyyyyy'.squeeze
puts 'Ruby is practical programming languge!'.sub(/p.*?\s/,'awesome ')
puts 'Ruby is practical programming languge!'.gsub(/p.*?\s/,'awesome ')
puts 'Ruby is practical programming languge!'.gsub(/p.*?\s/){|str| str.upcase}
puts 'Ruby is practical programming languge!'.gsub(/p.*?\s/){$&.to_s.upcase}

str = 'Ruby, python, Java'
puts str.split(', ')

puts str.split(/,s/)

puts str.split(/,s/, 3)

'Ruby'.each_char{|c| str <<"#{c}!"}
p str
"Rubyisgoodlanguage!".each_line {|line| puts line}
puts "hello".center(20,'12345')

h = "hello".gsub(/./) {|s| s.ord.to_s + ' '}
puts h
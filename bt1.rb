puts "In put your range you want: "
numofArray = gets.to_i

arr = Array.new(numofArray)

for i in 0...numofArray
	puts "Arr[#{i}]"
	arr[i] = gets.to_i
end

p arr.sort!
p arr.reverse

puts "Input: "
a = gets.to_i
if arr.include?(a)
	puts "true"
else puts "false"
end
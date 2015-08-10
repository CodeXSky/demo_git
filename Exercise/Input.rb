#!usr/bin/ruby

#Read file
=begin
aFile = File.new("input.txt","r")
if aFile
	content = aFile.sysread(20)
	puts content
else
	puts "Unable to open file!"
end
=end


#Write file
=begin
aFile = File.new("input.txt", "r+")
if aFile
	aFile.syswrite("ABCDEF")
	
else
	puts "Unable to open file!"
end
=end

#Write character

aFile = File.open("input.txt", "r+")
if aFile
	aFile.syswrite("ABCDEF")
	pt=IO.binread("input.txt")
	#aFile.rewind
	#b = File.size?("input.txt")
	i=0 
		po = pt.split("").to_a
		p po
else
	puts "Unable to open file!"
end

arr = IO.readlines("input.txt")
puts arr

IO.foreach("input.txt") {|block| puts block}
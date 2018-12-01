file='input.txt'
input=[]
File.readlines(file).each do |line|
  break if line == "\n"
  input << Integer(line)
end 

puts input.sum


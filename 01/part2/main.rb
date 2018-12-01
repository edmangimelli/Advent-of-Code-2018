file='input.txt'
input=[]
File.readlines(file).each do |line|
  break if line == "\n"
  input << Integer(line)
end 



sum = 0
sums = {}
keep_going = true
while keep_going
  keep_going = input.each do |i|
    key = (sum += i).to_s
    break false if sums[key]
    sums[key] = true
  end
end
puts sum

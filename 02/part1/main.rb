input=[]; File.readlines('input.txt').each{|l|break if l=="\n";input << l.strip}

twos = 0
threes = 0

letters = 'abcdefghijklmnopqrstuvwxyz'.split('')

input.each do |word|
  word = word.split('')
  has_two = false
  has_three = false
  letters.each do |letter|
    filtered = word.select {|w| w == letter}
    case filtered.length
    when 3; has_three = true
    when 2; has_two = true
    end
    break if has_three && has_two
  end
  threes += 1 if has_three
  twos += 1 if has_two
end

puts threes * twos

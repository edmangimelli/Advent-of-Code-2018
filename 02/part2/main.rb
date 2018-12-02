input=[]; File.readlines('input.txt').each{|l|break if l=="\n";input << l.strip}

def answer(a, b)
  conflicts = []
  i = 0
  len = a.length
  while i < len
    conflicts << i if a[i] != b[i]
    return nil if conflicts.length == 2
    i += 1
  end
  i = conflicts[0]
  return a[0...i] + a[i+1...len]
end

len = input.length
i = 0
while i < len
  j = i + 1
  while j < len
    if ans = answer(input[i], input[j])
      puts ans
      exit
    end
    j += 1
  end
  i += 1
end



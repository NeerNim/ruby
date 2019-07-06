def printStars(n)
  print "*"
  if n > 1
    printStars(n-1)
  end
end

printStars(5)

def power(base, exp)
  if exp == 0
    return base
  else
    return base * power(base, exp - 1)
  end
end

puts power(2, 2)

def palindrome(s)
  s = s.downcase
  if s.length == 1
    true
  else
    if s[0] == s[-1]
      middle = s[1..-2]
       palindrome(middle)
    else
      false
    end
  end
end

puts palindrome("RACECAR")

# print the given integer binary representation
# easier to get the last digit

def print_binary(n)
  puts "print binary (#{n})"
  if n < 0 
    print "-"
    print_binary(-n)
  
  elsif n < 2
    print n
  
  else
    last_digit = n % 2
    rest_of_digit = n / 2
    print_binary(rest_of_digit)
    print_binary(last_digit)
  end
end

print_binary(43)


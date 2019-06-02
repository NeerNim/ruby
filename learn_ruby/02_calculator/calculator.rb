#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  total = 0
  arr.each.with_index  {|num, i|  total += arr[i]}
  total
end

def multiply(*num)
  num.reduce(:*)
end

def power(num1, num2)
  product = 1
  1..num2.times do
   product*= num1
  end
  product
end

def fact(num) 
  if num == 0
    1
  else
  total = 1
    for i in 1..num
      temp = num - i
      if temp > 0
       total *=temp
      end
    end
    total * num
  end
end

fact(1)



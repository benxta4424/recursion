def fibo(number)
  if number==0
    return 0
  elsif number==1
    return 1
  else
    fibo(number-1)+fibo(number-2)
  end
end

puts fibo(8)
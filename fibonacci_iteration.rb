#fibonacci number with iteration
def fibo(number)
  arr=[]
  sum=0
  a=1
  b=0
  number.times do
    arr.push(sum)
    sum=a
    a+=b
    b=sum
    
  end
  arr.join(' ')
end

puts fibo(8)
def merge_sides(left,right)
  #we create 2 indexes to keep track where we are in the array
  le=0
  ri=0
  #we push the correct values here and save it for the next round
  sorted=[]
  #when we haven't reached any end (left:0-mid  right:mid-end) we can proceed to the sorting
  while le<left.length || ri<right.length
    #if we reached the end on the left side,it means that all the left side elements are sorted
    #we only need to put the right side that has been sorted also
    if le==left.length
      sorted.push(right[ri])
      ri+=1
    #this is the same as the previous explanation
    elsif ri==right.length
      sorted.push(left[le])
        le+=1
     #this is where the comparations happen we sort these based on their value. if it's lower it has a bigger prefcedence and goes at the top in the array
    elsif left[le]<right[ri] #if the value is smaller than the right,we put it in the array and we go to the next LEFT value
                             #if the next LEFT value is bigger than the right we go to the else statement
      sorted.push(left[le])
      le+=1
    else
      sorted.push(right[ri])
      ri+=1
    end
  end
  return sorted
end

#this method splits the array in half until the array is only comprised of 1 element
#we then compare this element with the one that is on the same height as him
#when we split the array in halg,we have a left side nd a right side
#when we reach only one element each,we compare the right element with the left element and sort them
def merge_sort(array)
  #base case
  if array.length<=1
    return array
  end

  #splitting the array in halves
  mid=array.length/2
  left=merge_sort(array[...mid])
  right=merge_sort(array[mid...])

  #sorting the current halves of the arrays
  return merge_sides(left,right)
end

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).join(' ')
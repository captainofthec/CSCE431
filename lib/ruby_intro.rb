# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  if arr.length == 0
    return 0
  end
  
  summation = 0
  
  for i in arr do
    summation = summation + i
  end
  
  return summation
end

def max_2_sum arr
  
  if arr.length == 0
    return 0
  end
    
  if arr.length == 1
    return arr[0]
  end
  
  biggest = arr[0]
  
  next_biggest = arr[1]
  
  counter = 0
  
  for i in arr do
    counter = counter + 1
    
    
    if i >= biggest and counter > 1
      next_biggest = biggest
      biggest = i
    end
  end
  
  return biggest + next_biggest
  
end

def sum_to_n? arr, n
  

  if arr.length == 1
    return false
  end 
  
  if arr.length == 0
    return false
  end 
  
  arr.each do |a|
    arr.each do |m|
      if a == m
        next
      end
      if a+ m == n
        return true
      end
    end
  end

      
  return false
  
end

# Part 2

def hello(name)
  text = "Hello, " + name
  
  return text
end

def starts_with_consonant? s
  
  if s.length == 0
    return false
  end
  
  a = s[0].downcase
  
  if !(a.match(/^[[:alpha:]]$/))
    return false
  end 
  
  if (a=="a" || a=="e" || a=="i" || a=="o"|| a=="u")
    return false
  end
    
 return true
end

def binary_multiple_of_4? s
  
  if(!s.match(/\A[-+]?[0-1]*\.?[0-1]+\Z/))
    return false
  end
  
  if (s[s.length-2] == '0') && (s[s.length-1]  == '0')
    return true
  end 
  
  if(s[0] == '0') && (s.length == 1)
    return true
  end 
  
  return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

attr_accessor :isbn
attr_accessor :price


  def initialize(isbn, price)  
    # Instance variables  
    
    raise ArgumentError.new if (isbn.length == 0 || price <= 0)

    @isbn = isbn  
    @price = price
      
      
    
  
  end  
  
  def price_as_string()
    
    text = @price.to_s
    
    if text[text.length - 2] == '.'
      text = "$" + @price.to_s + "0"
    
    elsif text[text.length - 3] == '.'
      text = "$" + @price.to_s
    
    else
      text = "$" + @price.to_s + ".00"
    end 
    
    return text
  end 

end

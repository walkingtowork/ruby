# CalcIt
# Should have a basic calculator that can add, subtract, multiply, and divide
# Should have an advanced calculator that does exponents and square roots

def calculator
  def calc_type
    puts "Would you like to use a basic calculator (basic) or an advanced calculator (advanced)?"
    @type = gets.chomp
  end
  while @type != "basic" && @type != "advanced"
    calc_type
  end
  if @type == "basic"
    basic_operations
  elsif @type == "advanced"
    advanced_operations
  else 
    puts "Something went wrong"  
  end
end

def basic_operations
  def operations_type
    puts "Would you like to add (add), subtract (subtract), multiply (multiply), or divide (divide)?"
    @operations = gets.chomp
  end
  while @operations != "add" && @operations != "subtract" && @operations != "multiply" && @operations != "divide"
    operations_type
  end
  case 
    when @operations == "add"
      get_num
      add_num
    when @operations == "subtract"
      get_num
      subtract_num
    when @operations == "multiply"
      get_num
      multiply_num
    when @operations == "divide"
      get_num
      divide_num
  end
end

def advanced_operations
  puts "Would you like to find an exponent (exponent) or a square root (root)?"
  operations = gets.chomp
  while operations != "exponent" && operations != "root"
    puts "Would you like to find an exponent (exponent) or a square root (root)?"
    operations = gets.chomp
  end
  if operations == "exponent"
    get_num
    exponent
  elsif operations == "root"
    square_root
  else
    puts "Something went wrong."  
  end
end

def get_num
  def get_numbers
    puts "Please type a number"
    @num1 = gets.chomp
    puts "Please type a second number"
    @num2 = gets.chomp
  end
  
  def is_actually_a_number
    @num1 == @num1.to_i.to_s && @num2 == @num2.to_i.to_s
  end  
  
  until is_actually_a_number
    get_numbers
  end

  @num1 = @num1.to_i
  @num2 = @num2.to_i

  return @num1, @num2

end

#Mathematical Functions
def add_num
  puts @num1 + @num2
end

def subtract_num
  puts @num1 - @num2
end

def multiply_num
  puts @num1 * @num2
end

def divide_num
  puts @num1 / @num2
end

def exponent
  puts @num1 ** @num2
end

def square_root
  puts "Please enter a number"
  num3 = gets.chomp.to_i
  puts Math.sqrt(num3)
end


calculator






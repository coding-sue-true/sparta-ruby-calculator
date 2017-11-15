require 'mathn'

def basic_calculator(operator, num1, num2)
  if (operator == '+')
    puts num1 + num2
  elsif (operator == '-')
    puts num1 - num2
  elsif (operator == '*')
    puts num1 * num2
  elsif (operator == '/')
    puts num1 / num2
  end
end

def bmi_calculator num1, num2
  puts (num1 / num2 ** 2)
end

def advanced_calculator (operator, num1, num2)
  if (operator == 'p')
    puts num1 ** num2
  elsif (operator == 'sqrt')
    puts Math.sqrt(num1)**num2
  end
end

puts "b for basic, a for advanced, bmi for BMI calculator (metric values)"
calculator_type = gets.chomp


if calculator_type == 'b'
  puts "-, +, * or /?"
  basic_operation = gets.chomp
  puts "choose one number"
  first_number = gets.chomp.to_i
  puts "choose a second number"
  second_number = gets.chomp.to_i
  basic_calculator(basic_operation, first_number, second_number)
elsif calculator_type == 'a'
  puts "p for power or sqrt for square root"
  advanced_operation = gets.chomp
  puts "choose one number"
  first_number = gets.chomp.to_i
  puts "choose a second number"
  second_number = gets.chomp.to_i
  advanced_calculator(advanced_operation, first_number, second_number)
elsif calculator_type == 'bmi'
  puts "please enter you weight in kilograms"
  metric_weight = gets.chomp.to_i
  puts "please enter your height in meters"
  metric_height = gets.chomp.to_i
  bmi_calculator(metric_weight, metric_height)
end

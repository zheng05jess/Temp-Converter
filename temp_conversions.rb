def convert(temp, measure = 'F')
  return "Temperature must be an integer" unless temp.class == Integer
  if measure == 'C' && !below_absolute_zero?(temp, measure)
    5 * (temp - 32)/9
  elsif measure == 'F' && !below_absolute_zero?(temp, measure)
    9 * temp / 5 + 32
  else 
    return "Temperature below Absolute Zero"
  end
end

def below_absolute_zero?(temp, measure)
  (temp < -454 and measure == "F") or (temp < -270 and measure == "C")
end

# TESTS
puts "Converting Fahrenheit to Celsius"
puts convert(32)
puts convert(50)
puts convert(212)
puts convert("zero")
puts convert(-500)

puts "Converting Celsius to Fahrenheit"
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")
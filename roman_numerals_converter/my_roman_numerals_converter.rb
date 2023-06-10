def convert_to_roman_units(num_string)
    roman_value = ""
  
    if num_string == "4"
      roman_value += "IV"
    elsif num_string == "9"
      roman_value += "IX"
    elsif num_string.to_i < 4
      count = 0
      while count < num_string.to_i
        roman_value += "I"
        count += 1
      end
    elsif num_string.to_i < 9
      count = 5
      roman_value += "V"
      while count < num_string.to_i
        roman_value += "I"
        count += 1
      end
    end
  
    return roman_value
  end
  
  def convert_to_roman_tens(roman_system, num_string)
    roman_value = ""
    tens_value = num_string[0].to_i
  
    if tens_value < 4
      count = 0
      while count < tens_value
        roman_value += roman_system['10']
        count += 1
      end
    elsif tens_value == 9
      roman_value += "XC"
    elsif tens_value >= 5
      count = tens_value - 5
      roman_value += roman_system['50']
      while count > 0
        roman_value += "X"
        count -= 1
      end
    elsif tens_value == 4
      roman_value += "XL"
    end
  
    if num_string[1] != '0' && num_string[1] != nil
      roman_value += convert_to_roman_units(num_string[1])
    end
  
    return roman_value
  end
  
  def convert_to_roman_hundreds(roman_system, num_string)
    roman_value = ""
    hundreds_value = num_string[0].to_i
  
    if hundreds_value < 4
      count = hundreds_value
      while count > 0
        roman_value += roman_system['100']
        count -= 1
      end
    elsif hundreds_value == 9
      roman_value += "CM"
    elsif hundreds_value >= 5
      count = hundreds_value - 5
      roman_value += roman_system['500']
      while count > 0
        roman_value += 'C'
        count -= 1
      end
    elsif hundreds_value == 4
      roman_value += 'CD'
    end
  
    if num_string[1] != '0' && num_string[1] != nil
      roman_value += convert_to_roman_tens(roman_system, num_string[1])
    end
    if num_string[2] != '0'
      roman_value += convert_to_roman_units(num_string[2])
    end
  
    return roman_value
  end
  
  def convert_to_roman_thousands(roman_system, num_string)
    roman_value = ""
    thousands_value = num_string[0].to_i
  
    count = thousands_value
    while count > 0
      roman_value += roman_system['1000']
      count -= 1
    end
  
    if num_string[1] != '0' && num_string[1] != nil
      roman_value += convert_to_roman_hundreds(roman_system, num_string[1])
    end
    if num_string[2] != '0' && num_string[2] != nil
      roman_value += convert_to_roman_tens(roman_system, num_string[2])
    end
    if num_string[3] != '0'
      roman_value += convert_to_roman_units(num_string[3])
    end
  
    return roman_value
  end
  
  def my_roman_numerals_converter(number)
    roman_system = {
      '1' => 'I',
      '5' => 'V',
      '10' => 'X',
      '50' => 'L',
      '100' => 'C',
      '500' => 'D',
      '1000' => 'M'
    }
  
    num_string = number.to_s
    num_length = num_string.length
    roman_value = ""
  
    case num_length
    when 1
      roman_value = convert_to_roman_units(num_string)
    when 2
      roman_value = convert_to_roman_tens(roman_system, num_string)
    when 3
      roman_value = convert_to_roman_hundreds(roman_system, num_string)
    when 4
      roman_value = convert_to_roman_thousands(roman_system, num_string)
    else
      roman_value = "Number out of range"
    end
  
    return roman_value
  end

require 'json'

def my_data_process(param_1)
  result = {}

  # Extract the header from the first line
  header = param_1[0].split(",")

  # Initialize the result hash with the column names as keys
  header.each do |column|
    # Skip unwanted columns
    next if ["FirstName", "LastName", "UserName", "Coffee Quantity"].include?(column)

    result[column] = {}
  end

  # Iterate over the data lines
  param_1[1..-1].each do |line|
    values = line.split(",")

    # Iterate over the values and update the counts in the result hash
    values.each_with_index do |value, index|
      column = header[index]

      # Skip unwanted columns
      next if ["FirstName", "LastName", "UserName", "Coffee Quantity"].include?(column)

      result[column][value] ||= 0
      result[column][value] += 1
    end
  end

  # Convert the result hash to a JSON string
  json_result = JSON.generate(result)

  return json_result
end

  
  #data_transform_output = [
    #"Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At",
    #"Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon",
    #"Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon",
    #"Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon",
    #"Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning",
    #"Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"
  #]
  
  #json_output = my_data_process(data_transform_output)
  #puts json_output

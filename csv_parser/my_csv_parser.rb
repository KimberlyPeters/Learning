def my_csv_parser(csv_string, separator)
    lines = csv_string.split("\n")
    result = []

    lines.each do |line|
        columns = line.split(separator)
        result << columns
    end

    return result
end


#csv_string = "a,b,c,e\n1,2,3,4\n"
#separator = ","
#result = my_csv_parser(csv_string, separator)

#puts result.inspect
# Output: [["a", "b", "c", "e"], ["1", "2", "3", "4"]]

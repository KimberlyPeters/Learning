class MySelectQuery
    def initialize(csv_content)
      lines = csv_content.split("\n")
      @columns = lines[0].split(",")
      @data = lines[1..].map { |line| line.split(",") }
    end
  
    def where(column_name, criteria)
      column_index = @columns.index(column_name)
      result = @data.select { |row| row[column_index] == criteria }
      result.map { |row| row.join(",") }
    end
  end

#csv_content = "name,year_start,year_end,position,height,weight,birth_date,college\nAlaa Abdelnaby,1991,1995,F-C,6-10,240,'June 24 1968',Duke University\nZaid Abdul-Aziz,1969,1978,C-F,6-9,235,'April 7 1946',Iowa State University\nKareem Abdul-Jabbar,1970,1989,C,7-2,225,'April 16 1947','University of California, Los Angeles'\nMahmoud Abdul-Rauf,1991,2001,G,6-1,162,'March 9 1969',Louisiana State University"

#query = MySelectQuery.new(csv_content)
#result = query.where('name', 'Alaa Abdelnaby')
#puts result.inspect


# require "json"
# lines = File.open("log_on_date.txt").read.split("{\n").join("},")+"}"
# data = JSON.parse([lines].to_s)
# puts data

# Split on a comma.
# value = "cat,,dog,bird"
# elements = value.split(",")
# print elements, "\n"

# # Remove empty elements from the array.  \[(.*?)\]
# elements.delete_if{|e| e.length == 0}
# print elements

# IO.foreach("log_on_date.txt") do |line|
    
#         # Remove trailing whitespace.
#         # line.chomp!
    
#         # Split on comma.
#         values = line.split("{")
    
#         # Write results.
#         print values
    
#     end

#     test = "Eclipse Developments (Scotland) Ltd t/a Martin & Co (Glasgow South)
# require "json"
#     lines = File.open("log_on_date.txt").read.split(?=[^\]]*(?:\[|$))
#     data = JSON.parse([lines].to_s)
#     puts data
    
    # test.scan(/\(([^\)]+)\)/).last.first

    # require "json"
    # lines = File.open("log_on_date.txt").read.split("}\n").join("},")+"}"
    # # data = JSON.parse([lines].to_s)
    # # File.write("data.json",data)
    # # puts "file written"
    # puts lines.scan(/\n{2,}/)

    require "json"
    lines = File.open("log_on_date.txt").read
    puts data = lines.scan(/\{((\s*?.*?)*?)\}/).gsub!(/\n\n/, "\n").join("}\n {")
    # data = JSON.parse([lines].to_s)
    # data.delete_if{|lines| lines.length == 0}
    puts data

    File.open("json_data.json","w") do |f|
        f.puts data
    end
    
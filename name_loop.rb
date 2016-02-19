
def get_name 
  name = ''
  
  loop do
    print "Please enter your name. Name must be longer than two characters and containe no numbers:"
    name = gets.chomp 
    if name.length >2 && !name.index(/\d/)
      break 
      else 
      print "error"
   end 
   end 
    return name
   end 
 
  name = get_name()
  puts "Hi #{name}" 

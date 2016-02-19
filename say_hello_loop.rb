def say_hello(number_of_times)
  i = 0
  while i < number_of_times
  puts "hello"
  i += 1
  end 
end 

anwser = 0
while anwser < 5
print "how many times would you like to say hello pick 1 to 5: "
  anwser = gets.chomp.to_i
say_hello(anwser) 

end

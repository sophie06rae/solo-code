class SimpleBenchmarker
  
def run (description, &block)
  start_time = Time.now
  block.call
  end_time = Time.now
  elapsed = start_time - end_time
  puts "#{description} results"
  puts "Time elapsed is #{elapsed} seconds"

end
end 
  
benchmarker = SimpleBenchmarker.new
  benchmarker.run "Sleep a random amount of time" do
    5.times do 
    print "."
  sleep(rand (1.0..2.0))
 end 
 end 

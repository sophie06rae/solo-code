class Monster

attr_reader :name, :actions

def initialize(name)
  @name = name
  @actions = {
    scream: 0,
    run: 0,
    frights: 0
    }
 end 
  
def print_scoreboard
  puts "-" * 30
  puts "#{name} Scoreboard"
  puts "-" * 30
  puts "Screams: #{actions[:scream]}"
  puts "Runs: #{actions[:run]}"
  puts "Frights: #{actions[:frights]}"
  puts "-" * 30
end

def inspect
  puts "#{actions}"
end

def say (&block)
  print " #{name} says ...."
  block.call
end 
  
def scream(&block)
  actions[:scream] += 1
  print "#{name} screams!"
  block.call
  end

def run(&block)
  actions[:run] += 1
  print "#{name} runs..."
  yield 
end
  
def frights(&block)
  actions[:frights] +=1
  print "#{name} frights..."
  yield self if block_given? 
end
end 
  
monster = Monster.new ("Fluffy")
monster.say { puts "Welcome to my home" }
monster.scream do 
  puts "BOOOO!"
 end
monster.run do
  puts "AT YOU!"
end

monster.frights do |m|
  puts "himself"
  print m.inspect 
end 

puts monster.print_scoreboard

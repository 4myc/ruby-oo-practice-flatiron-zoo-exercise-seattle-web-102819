require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
# require 'pry'


#Test your code here
elephant = Animal.new("Elephant", 400, "Ellie")
chimpanzee = Animal.new("Chimpanzee", 60, "Chimp")
tiger = Animal.new("Tiger", 200, "Tigger")
tiger2 = Animal.new("Tiger2", 180, "Tigger2")

zoo1 = Zoo.new("Zoo1", "Seattle", elephant) #add animal object when adding "animal" to Zoo class!
zoo2 = Zoo.new("Zoo2", "Portland", chimpanzee)
zoo3 = Zoo.new("Zoo3", "Vancouver", tiger)
zoo4 = Zoo.new("Zoo4", "San Francisco", tiger2)



binding.pry
puts "done"

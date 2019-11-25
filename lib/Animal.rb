require 'pry'
class Animal #belongs_to
    attr_reader :species, :weight, :nickname
    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    #return the zoo instance that the animal instance belongs to
    def zoo
        Zoo.all.select {|z| z.animal == self}
    end

    #return an array of all the animals, which are of that species
    def self.find_by_species(species)
        @@all.select {|s| s.species == species}
    end
    
end

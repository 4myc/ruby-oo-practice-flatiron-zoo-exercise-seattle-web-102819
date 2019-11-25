class Zoo #has_many, single source of truth
    attr_reader :name, :location, :animal #add animal object in run.rb to Zoo!
    @@all = []

    def initialize(name, location, animal)
        @name = name
        @location = location
        @animal = animal
        @@all << self
    end

    def self.all
        @@all
    end

    #return all the animals that a specific instance of a zoo has
    def animals
        @@all.select {|z| z.animal == animal}
    end

    #return an array of all the species (as strings) of the animals in the zoo. 
    #However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array)
    def animal_species
        animals.map {|a| a.animal.species}.uniq
    end
    # retrieves animals first, then the species (a.animal.species)

    def find_by_species(species)
        Animal.all.select {|a| a.species == species}
    end

    #return an array of all the nicknames of animals that a specific instance of a zoo has
    def animal_nicknames
        animals.map {|a| a.animal.nickname}
    end
    # retrieves animals first, then the nickname (a.animal.nickname)


    #return an array of all the zoos within that location
    def self.find_by_location(location)
        @@all.select {|z| z.location == location}
    end
end

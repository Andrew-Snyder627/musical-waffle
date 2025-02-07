class Shelter
    attr_reader :name, :capacity, :pets

    def initialize(name, capacity) 
        @name = name
        @capacity = capacity
        @pets = [] #empty array to add pet names
    end

    def add_pet(pet_name)
        @pets << pet_name #shoveling into the array
    end

    def call_pets
        @pets.map { |pet| pet + "!"} #adding ! to each name, using map. Might be wrong
    end

    def over_capacity?
        @pets.length > capacity #Is the count of the pet array greater than the capacity?
    end

    def adopt #This caused issues but got the test to pass with .shift
        @pets.shift
    end
end
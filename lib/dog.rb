# Add your code here


class Dog

    @@all = []

    attr_reader :name

    def initialize(name)
      @name = name
      self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end

    def save
        self.class.all << self
    end
end

dog_one = Dog.new("Fido")
dog_two = Dog.new("Andy")
dog_three = Dog.new("Dave")
Dog.print_all
# class Dog

#     # This constant is accessible from the Dog classes
#     @@SPECIES = "canine"
#     @@all_dogs = []

#     attr_accessor :name, :breed

#     def initialize(dog_name, dog_breed)
#         @name = dog_name
#         @breed = dog_breed
#         # Self here refers to the instance
#         # @@all_dogs << self
#         self.class.all_dogs << self
#     end

#     # Instance method

#     def bark
#         puts "#{name} says woof!!"
#     end

#     # Class method
#     def self.species
#     @@SPECIES
#     end

#     # Self. makes a method a class method
#     def self.all_dogs
#         @@all_dogs
#     end

#     def self.find_by_breed(breed)
#     self.all_dogs.select{ |dog| dog.breed === breed}
#     end

# end

# # puts Dog.species 
# puppy = Dog.new("fido", "spoodle")
# puppy = Dog.new("bruce", "lab")
# puppy = Dog.new("missy", "lab")
# puppy = Dog.new("harry", "lab")
# hound = Dog.new("buddy", "cocker spaniel")

# # puts Dog.all_dogs

# all_labs = Dog.find_by_breed("lab")
# puts "All dogs"
# puts Dog.all_dogs
# puts "All labs"
# puts all_labs
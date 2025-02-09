class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

     def initialize(species)
       @species = species
       @pets = {fishes: [], cats: [], dogs: []}
       @@all << self
     end

     def self.all
       @@all
     end

     def self.count
       @@all.count
     end

     def self.reset_all
       @@all.clear
     end

     def say_species
        "I am a #{@species}."
     end

    def buy_fish(name_of_fish)
      @pets[:fishes] << Fish.new(name_of_fish)
    end

    def buy_cat(name_of_cat)
      @pets[:cats] << Cat.new(name_of_cat)
    end

    def buy_dog(name_of_dog)
      @pets[:dogs] << Dog.new(name_of_dog)
    end

    def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end


    def play_with_cats
      @pets.collect do |species, instances|
        if species == :cats
          instances.each do |cat|
          cat.mood = "happy"
        end
       end
      end
    end

    def feed_fish
      @pets.collect do |species, instances|
        if species == :fishes
          instances.each do |fish|
           fish.mood = "happy"
         end
       end
     end
    end

    def sell_pets
      @pets.each do |species, instances|
        instances.each do |pets|
          pets.mood = "nervous"
        end
      instances.clear
      end
    end

    def list_pets
      num_dogs = @pets[:dogs].size
      num_cats = @pets[:cats].size
      num_fishes = @pets[:fishes].size
      return "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end

end

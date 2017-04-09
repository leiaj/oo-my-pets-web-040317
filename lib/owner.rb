require 'pry'
class Owner

  attr_accessor :name, :pets, :count
  attr_reader :species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@owners
  end

  def self.count
    @count = @@owners.length
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    if @species == species
      "I am a #{species}."
    end
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      if dog.mood == "nervous"
      # puts "in the dog mood if statement"
      dog.mood = "happy"
      end
      # puts "tried to set mood to happy #{dog.mood}"
    end
    # binding.pry
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      if cat.mood == "nervous"
        cat.mood = "happy"
      end
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      if fish.mood == "nervous"
        fish.mood = "happy"
      end
    end
  end

  def sell_pets
    @pets.each do |pet_type, pets|
      pets.each do |pet|
        if pet.mood == "happy"
          pet.mood = "nervous"
        end
      end
      pets.clear
    end
  end

  def list_pets
    # "I have #{@pets[:fishes]} fish, #{@pets[:dogs]} dog(s), and #{@pets[:cats]} cat(s)."
    # @pets.each do |pet_type, pets|
    #   pets.each do |pet|
    #   end
    # end
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    # binding.pry
  end


end

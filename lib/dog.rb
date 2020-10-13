  class Dog 
    @@all = []
    attr_accessor :name 
  
    def initialize(name)
        @name = name 
        #@@all << self
        self.save()
    end 

    def self.all
        @@all.each do |dog|
        puts dog.name 
        end 
    end  

    def self.clear_all 
            @@all.clear
    end 

    def self.print_all
        @@all.each do |dog|
        puts dog.name
        end  
    end 

    def self.save_all
        #self.save
    end

    def save()
        @@all << self
    end    
end  
  Dog.new("Pluto")
  Dog.new("Fido")
  Dog.print_all
  Dog.clear_all
  Dog.save_all
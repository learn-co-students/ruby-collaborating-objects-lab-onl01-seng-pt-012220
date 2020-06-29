require 'pry'

class Artist
    #An Artist be initialized with a name and should have an attribute accessor for this name. The class should have an @@all class variable and store all Artist instances in this variable.
attr_accessor :name

@@all = []#class variable 


def initialize(name)
    @name = name  
    @@all << self #with initialize self always refers to the object your building and no matter what the last line in initialize returns new is always going to return the object you just built. 
 end 
#any arguments will require instance variable 
#and you want to push this whole instance inside an @@all variable 


def add_song(song)
   #@songs << song
   song.artist = self 
end
#This instance method receives an instance of a Song and associates it belongs to this Artist instance.
#because this class belongs to another class, it automatically needs an attr accessor. 

def save
   @@all << self #saves the artist name to the all array
 end

 def self.all 
   @@all 
   end

def songs 
   Song.all.select do |song|
   song.artist == self 
    end
end
 #This instance method returns an Array of all songs that belong to this Artist instance. This method should get all existing Song instances from Song and select only the ones that are associated with this Artist instance.

 def self.find_by_name(name)
   self.all.find do |artist|
   artist.name == name
   end 
end
   #helper method 


 def self.find_or_create_by_name(name) 
    self.find_by_name(name) or self.new(name) #boolean
   end
    #if the left side is true it doesnt return this method , it performs it. 
    #this will always check left to right at all times, need to have find by name first 
    
    #think of the single respsonibility principal 
    #helper methods 

 def self.create_by_name(name)
    new_artist.Artist.new(name)
    new_artist 
 end 
 #this is a helper method 
 #to make the code in find or create by name cleaner 

 def print_songs 
    songs.each {|song| puts song.name}
 end 
 
 #all this wants you to do is return all the songs that belong to this artist and return it into array.
 #iterate because it is an array
end 
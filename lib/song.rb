require 'pry'

class Song 
 attr_accessor :name, :artist 
 @@all = []
end

def initialize()
  @name = name
  @@all << self
end

def self.all
  @@all
end
end



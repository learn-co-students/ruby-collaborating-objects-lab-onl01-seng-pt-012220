require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    binding.pry
    artist_to_create_or_find = Artist.all.select{|artist|
      artist.name == name
    }
     if artist_to_create_or_find == [] #if artist has no instances
       return Artist.new(name)
     end
    puts value
    value
  end
end

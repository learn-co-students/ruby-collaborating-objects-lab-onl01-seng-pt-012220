require "pry"
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
    @@all.uniq!
    #binding.pry
  end

  def self.all
    @@all
  end

  def add_song(name)
    new_song = Song.new(name)
    new_song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end


end

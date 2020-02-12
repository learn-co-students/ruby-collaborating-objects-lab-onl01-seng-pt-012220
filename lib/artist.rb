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
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name, genre = nil)
     new_song = Song.new(name, genre)
     add_song(new_song)
   end

  def self.song_count
    Song.all.length
  end

  def self.find_by_name(name)
    @@all.find{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : Artist.new(name)
  end

  def print_songs
    song_names = []
    Song.all.each do |song|
      if song.artist == self
        song_names << song.name
      end
    end
    puts song_names
  end

end

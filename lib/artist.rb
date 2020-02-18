class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
  
  def self.find_or_create_by_name(name)
    if self.all.none? {|artist| artist.name == name}
      new_artist = Artist.new(name)
      new_artist
    else
      self.all.detect {|artist| artist.name == name}
    end
  end
  
end
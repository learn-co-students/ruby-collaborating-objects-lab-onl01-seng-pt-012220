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
end

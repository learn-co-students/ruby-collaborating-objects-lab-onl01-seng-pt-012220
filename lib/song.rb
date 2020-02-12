class Song
  attr_accessor :title, :artist, :genre
  @@all = []
  def initialize(name, genre = nil)
    @name = name
    @genre = genre
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist
    @artist
  end
end

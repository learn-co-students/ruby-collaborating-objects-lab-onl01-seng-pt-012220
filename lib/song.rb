require "pry"
class Song
  attr_accessor :artist,:name, :genre
  @@all = []
  def initialize(song, genre = nil)
    @name = song
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


  def artist_name
    answer = nil
    if self.artist
    answer = self.artist.name
    end
    answer
  end

  def self.new_by_filename(filename)
    parts_of_filename =[]
    new_song = nil
    parts_of_filename = filename.split(" - ")
    new_song = Song.new(parts_of_filename[1], parts_of_filename[2])
    new_song.artist_name = parts_of_filename[0]
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end

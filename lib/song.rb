class Song
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
     song = new(filename.split(' - ')[1])
     artist = Artist.new(filename.split(' - ')[0])
     song.artist = artist
     song
   end

    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end
end

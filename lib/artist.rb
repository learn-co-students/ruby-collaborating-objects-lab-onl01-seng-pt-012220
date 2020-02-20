class Artist 
  attr_accessor :name 
  
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self 
    @song_list = []
  end
  
  def self.all
    @@all
  end
    
  def add_song(song)
    song.artist = self
    @song_list << song
  end

   def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def instance 
    self
  end
  
   def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name} 
       self.all.detect {|artist| artist.name == name} 
    else 
      artist = Artist.new(name)
      artist
    end
   end
  
  def print_songs
    @song_list.each do |song|
      puts song.name
    end
  end
  
    
end


  
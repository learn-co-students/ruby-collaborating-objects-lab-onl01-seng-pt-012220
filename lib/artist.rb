class Artist

  attr_accessor :name, :songs

  @@all = [] #all class variable

  def initialize(name) #initialized with name
    @name = name #add to global variable
    @songs = [] #open empty array for global songs
    save #invokes save method
  end

  def self.all #Artist.all class method
    @@all
  end

  def self.create(name) #Artist.create
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find(name) #find by artist
    self.all.detect { |artist| artist.name == name }
  end

#This class method should take the name that is passed in (remember, it will be a #string), and do one of two things. Find the artist instance that has that name or #create one if it doesn't exist. Either way, the return value of the method will be #an instance of an artist with the name attribute filled out.
  def self.find_or_create_by_name(name) #Artist.find_or_create_by_name
    self.find(name) || self.create(name)
  end

  def add_song(song) 
    @songs << song
  end
#This instance methods outputs the names of all songs associated with this Artist instance.
  def print_songs
    songs.each { |song| puts song.name }
  end

  def save #helper to save
    @@all << self
  end

end
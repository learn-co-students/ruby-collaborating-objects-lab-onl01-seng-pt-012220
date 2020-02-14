class Song
  
  #A Song should be iniitialized with a name and have attribute accessors for name #and artist. 
  #The Song class should have an @@all class variable and store all Song instances in this variable.

  @@all = []

    attr_accessor :name, :artist

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.new_by_filename(file_name)
      #It must parse a filename to find the song name and artist name
      song = file_name.split(" - ")[1]
      artist = file_name.split(" - ")[0]
      #From here, we will create a new song instance using the string we gathered #from the filename
      new_song = self.new(song)
      #We'll also want to associate that new song with an artist.
      new_song.artist_name = artist
      # Return the new song instance.
      new_song
    end
  
    def artist_name=(name)
      #Either we have to create that Artist instance
      self.artist = Artist.find_or_create_by_name(name) 
      #Or it already exists and we have to find that Artist instance
      artist.add_song(self)

    end

    def self.all
      @@all #code here
    end
  
  end
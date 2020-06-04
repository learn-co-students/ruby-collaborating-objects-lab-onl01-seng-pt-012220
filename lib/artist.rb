class Artist
    attr_accessor :name, :songs 
    
    @@all = [] 

    def initialize (name)
        @name = name
        @songs = [] 
        @@all << self  
    end 

    def self.all
        @@all 
    end 

    def add_song (song)
        self.songs << song 
    end 

    def self.find_or_create_by_name (name)
        existing_artist = self.all.find {|artist_name| artist_name = name}
        if existing_artist == nil 
            existing_artist = Artist.new(name)
        else
            existing_artist    
        end
    end 

    def print_songs
        self.songs.map {|song| puts song.name}
    end 


end 
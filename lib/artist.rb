class Artist
    @@all = []
    def initialize(name)
        @name  = name
        @@all << self
    end
    def name
        @name
    end
    def name=(name)
        @name  = name
    end

    def self.all
        @@all
    end
    
    def add_song(song)
        song.artist = self
    end

    def songs
       Song.all.select{|song| song.artist == self} 
    end

    def self.find_or_create_by_name(search_name)
        search = nil
        if(Artist.all.find{|artist| artist.name == search_name} == nil)
            new_artist = Artist.new(search_name)
            new_artist
        else
            Artist.all.detect{|artist| search = artist if artist.name == search_name}
            search
        end
    end

    def print_songs
        Song.all.select do |song|
            if song.artist == self
                puts song.name
            end
        end
    end


end
require 'pry'
class Song

    attr_accessor :name, :artist
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        split_file = filename.split(" - ")
        new_instance = Song.new(split_file[1])
        new_instance.artist_name=(split_file[0])
        new_instance
    end

    def artist_name=(name)
        artist_name = Artist.find_or_create_by_name(name)
        self.artist = artist_name
    end

end
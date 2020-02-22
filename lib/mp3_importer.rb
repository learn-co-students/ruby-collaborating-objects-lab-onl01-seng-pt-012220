class MP3Importer
    @@all = []

    attr_accessor :path

    def initialize(path)
        @path = path
        @@all << self
    end

    def files
        Dir.entries(@path).select {|file| file.include?(".mp3")}
    end

    def import
        files.each do |file|
            Song.new_by_filename(file)
        end 
    end











end
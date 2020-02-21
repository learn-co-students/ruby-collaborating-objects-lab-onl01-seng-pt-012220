class MP3Importer
    attr_accessor :path, :filenames
    @@all = []

        def initialize(path)
            @path = path
            @filenames = []
            @@all << self
        end

        def self.all
            @@all
        end

        def files
            Dir.entries(@path).select{|file| file.include?(".mp3")}
        end

        def import
            files.each do |file|
                Song.new_by_filename(file)
            end
        end
end
        
            
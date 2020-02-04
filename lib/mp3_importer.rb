class MP3Importer

    attr_accessor :path

    def initialize(filepath)
        @path = filepath
    end

    def files 
        current_dir = Dir.getwd
        Dir.chdir(@path)
        filenames = Dir.glob("*.mp3")
        Dir.chdir(current_dir)
        filenames
    end

    def import
        filenames = self.files
        filenames.each do |files|
            Song.new_by_filename(files)
        end
    end

end
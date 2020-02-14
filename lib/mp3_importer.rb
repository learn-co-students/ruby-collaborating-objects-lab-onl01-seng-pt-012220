class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
        #some code here
    end

    def files
        #empty array
        files = []
        #use Dir.new
        Dir.new(self.path).each do |file|
            files << file if file.length > 4 #dump in files if length is > 4
        end
        #return files
        files
    end

    def import
        self.files.each do |filename| #for each file, create an association by filename
            Song.new_by_filename(filename) #referencing method in SONG
        end
    end


end
class MP3Importer 
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path  
    @files = []
  end 
  
  def files
    puts "in files, path=#{@path}"
    puts "wd=...#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
    current_dir = Dir.getwd
    Dir.chdir(@path)
    filenames = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    filenames
  end
  
  def import 
    self.files.each do |filename|
    song = Song.new_by_filename(filename)
  end 
end 
end
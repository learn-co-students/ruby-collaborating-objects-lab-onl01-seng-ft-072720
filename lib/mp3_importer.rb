class MP3Importer 
  
  attr_accessor :path
  
  @@path_directory = []
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    @files ||= Dir.entries(@path).select do |song|
     !File.directory?(song) && song.end_with?(".mp3")
    end 
  end 
  
  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
end 
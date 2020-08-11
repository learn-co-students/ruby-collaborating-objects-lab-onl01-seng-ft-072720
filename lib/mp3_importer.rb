require 'pry'
class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    path_ = @path + "/**/*.mp3"
   @list_of_filenames = Dir[path_].map{ |f| File.basename(f)}
  end 
  
  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end
  
end
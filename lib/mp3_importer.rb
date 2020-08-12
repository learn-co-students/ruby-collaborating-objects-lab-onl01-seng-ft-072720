class MP3Importer 
attr_reader :path

  def initialize(path)
    @path = path 
  end 

# parses a directory of files
  def files
   @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
   end 
    

#imports to Song class 
  def import
    self.files.each{ |file| Song.new_by_filename(file) }
    end
end 
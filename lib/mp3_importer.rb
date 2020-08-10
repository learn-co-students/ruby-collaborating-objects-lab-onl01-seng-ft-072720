class MP3Importer
  attr_accessor :path
 
  def initialize(path)
    @path = path
  end

  def files
  files = Dir.entries(path).select {|f| !File.directory? f}
  files
  end

  def import 
  files.collect do |song|  
    Song.new_by_filename(song)
    end
  end
end
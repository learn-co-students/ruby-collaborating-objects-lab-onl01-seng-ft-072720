class MP3Importer
  attr_accessor :path

def initialize(path)
  self.path = path
end

def files
  Dir.glob("#{path}/*.mp3").map do |e|
    e2 = e.split("/")
    e2.last
  end
end

def import
  files.each {|s| Song.new_by_filename(s)}
end

end

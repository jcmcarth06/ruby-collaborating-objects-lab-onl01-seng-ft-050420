class Artist
  attr_accessor :name, :songs
  @@all = []  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  def add_song(song)
    self.songs << song    
                          
  end
  def save
    @@all << self     
                      
  end
  def self.all      
    @@all
  end
  def self.find_or_create_by_name(name)   
    if @@all.find {|a| a.name == name}
    @@all.find {|a| a.name == name}
  else
    Artist.new(name)
  end
end
  def self.find(name)     
    self.all.detect { |artist| artist.name == name }
  end
  def self.create(name)   
    artist = Artist.new(name)
    artist.save
    artist
  end
  def print_songs 
    self.songs.each {|song| puts song.name}
  end
end

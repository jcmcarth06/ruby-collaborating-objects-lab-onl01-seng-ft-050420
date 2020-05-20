class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << self
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new.song = self.new(song)
    new.song.artist_name = artist
    new_song
  end




  def artist=(artist)
    @artist = artist
    add_song
  end



  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song
  end

end

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @song = []
    self.save  
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
end
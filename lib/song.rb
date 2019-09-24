class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name, artist=nil)
    @name = name
    @@all << self
    @artist = artist
  end
  
  def self.all
    return @@all
  end
  
  def artist_name
    if self.artist
    return self.artist.name
  else
    nil
  end
end
    
  
end
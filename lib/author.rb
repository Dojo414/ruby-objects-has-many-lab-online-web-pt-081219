class Author 
  
  attr_accessor :name
  @@post_count = 1 
  
  def initialize(name)
    @posts = []
    @name = name
  end
  
  def add_post(post_name)
    @posts << post_name
    post.artist = self
    @@song_count +=1
  end
  
  def songs
     Song.all.find_all {|song| song.artist == self} 
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1 
  end
  
  def self.song_count
    @@song_count
  end
  
end
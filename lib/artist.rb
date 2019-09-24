require 'pry'
class Artist 
  
  attr_accessor :name
  @@song_count = 1 
  
  def initialize(name)
    @songs = []
    @name = name
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end
  
  def songs
     Song.all.collect {|song| song.artist = self} 
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


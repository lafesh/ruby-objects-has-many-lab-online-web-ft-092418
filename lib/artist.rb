require 'pry'
class Artist 
  
  attr_accessor :name 
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs
    @songs 
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@all << self 
  end 
  
  def add_song_by_name(song_name)
    songs = Song.new(song_name)
    songs.artist = self 
    @songs << songs
    @@all << self
  end 
  
  def self.song_count
    @@all.count 
  end 
end 
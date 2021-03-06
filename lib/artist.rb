require 'pry'

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save 
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def self.find_or_create_by_name(name)
   # binding.pry 
    artist = self.all.find {|a| a.name == name} 
    if !artist
      artist = self.new(name)
    end
    artist
  end 
  
  def print_songs 
    @songs.each do |song|
      puts song.name  
    end 
  end 
  
end 
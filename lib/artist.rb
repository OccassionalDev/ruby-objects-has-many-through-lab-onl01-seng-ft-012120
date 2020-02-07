class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    return @@all 
  end 
  
  def songs 
    return Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def genres 
    self.songs.map{ |song| song.genre }
  end 
  
end 
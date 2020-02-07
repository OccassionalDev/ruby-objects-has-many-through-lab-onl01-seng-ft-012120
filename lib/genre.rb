class Genre 
  attr_reader :name 
  
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
      song.genre == self 
    end 
  end 
end 
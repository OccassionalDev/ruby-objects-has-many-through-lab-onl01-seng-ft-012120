class Patient 
  attr_reader :name 
  
  @@all = [] 
  
  def intialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 
class Post 
  attr_accessor :name, :author 
  @@all = []
  
  def initialize(name, author=nil)
    @name = name
    @@all << self
    @author = author
  end
  
  def self.all
    return @@all
  end
  
  def author_name
    if self.author 
    return self.author.name
  else
    nil
  end
end
    
  
end
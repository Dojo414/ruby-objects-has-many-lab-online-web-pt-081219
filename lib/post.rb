class Post 
  attr_accessor :title, :author 
  @@all = []
  
  def initialize(name, author=nil)
    @title = title
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
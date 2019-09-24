class Author 
  
  attr_accessor :name
  @@post_count = 1 
  
  def initialize(name)
    @posts = []
    @name = name
  end
  
  def add_post(post_name)
    @posts << post_name
    post_name.author = self
    @@post_count +=1
  end
  
  def posts
     Post.all.find_all {|posts| posts.author == self} 
  end
  
  def add_post_by_title(post_name)
    new_post = Post.new(post_name)
    new_post.author = self
    @posts << new_post
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count
  end
  
end
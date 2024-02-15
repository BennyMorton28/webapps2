class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    @post = Post.new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @post = Post.new
    # assign user-entered form data to Post's columns
    @post["author"] = params["author"]
    @post["body"] = params["body"]
    @post["image"] = params["image"]
    @post.save
    # save Post row
   redirect_to "/posts"
  end

end


def create
  # start with a new Company
  @company = Company.new
  # assign user-entered form data to Company's columns
  # save Company row
  @company["name"] = params["name"]
  @company["city"] = params["city"]
  @company["state"] = params["state"]
  @company.save
  # redirect user
  redirect_to "/companies"
end
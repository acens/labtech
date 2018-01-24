class HomeController < ApplicationController
  def index
    @post = Post.all
  end

  def about
    @member = Member.all
  end

end

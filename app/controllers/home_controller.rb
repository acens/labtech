class HomeController < ApplicationController
  def index
    @post = Post.all
    @course = Course.all
  end

  def about
    @member = Member.all
  end

end

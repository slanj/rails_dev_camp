class PagesController < ApplicationController
  def home
    @posts = Article.all
  end

  def about
  end

  def contact
  end
end

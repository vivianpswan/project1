class PagesController < ApplicationController
  def welcome
    @article = Article.last
  end
end

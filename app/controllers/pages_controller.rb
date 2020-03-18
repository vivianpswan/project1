class PagesController < ApplicationController
  def index
    @article = Article.last || Article.new
  end
end

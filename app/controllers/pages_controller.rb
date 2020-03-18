class PagesController < ApplicationController
  def index
    @article = Article.last
    
    end
end

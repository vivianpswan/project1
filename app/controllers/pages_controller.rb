class PagesController < ApplicationController
  def welcome
    @articles = Article.all
  end
end

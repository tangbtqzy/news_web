class NewController < ApplicationController
  def index
  	@news = Article.all
  	# binding.pry
  end
end

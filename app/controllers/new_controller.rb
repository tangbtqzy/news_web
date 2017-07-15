class NewController < ApplicationController
  def index
  	@news = New.all
  end
end

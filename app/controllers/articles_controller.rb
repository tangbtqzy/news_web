class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(permit_params)
    @article.save!
    redirect_to articles_path
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def destroy
  	@article = Article.find_by_id(params[:id])
  	result = @article.delete
    redirect_to articles_path
  end

  private
    def permit_params
      params.require(:article).permit(:name, :sub_title, :description, :content)
    end
end

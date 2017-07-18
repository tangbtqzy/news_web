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

  def update
    @article = Article.find_by_id(params[:id])
    @msg = t("update_failure")
    if @article.update_attributes(permit_params)
      @msg = t("update_success")
      redirect_to articles_path, error: @msg
    else
      redirect_to articles_path, error: @msg
    end
  end

  private
    def permit_params
      params.require(:article).permit(:name, :sub_title, :description, :content)
    end
end

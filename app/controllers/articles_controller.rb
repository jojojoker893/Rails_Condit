class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: "保存されました！"
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to root_path, notice: "更新されました！"
    else
      Rails.logger.debug "Validation Errors: #{@article.errors.full_messages}"
      render :edit
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, notice: "削除しました！"
  end

  private

  def article_params
    params.require(:article).permit(:title, :about, :content, :tag)
  end
end

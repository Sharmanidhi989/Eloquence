class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    # @articles = Article.all
    @search = Article.search(params[:q])
    @articles = @search.result
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

end

class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @news_items = News.all
    @news_item = News.new
  end


  # GET /news/new
  # GET /news/new.json
  def new
    @news_item = News.new

  end

  # GET /news/1/edit
  def edit
    @news = News.find(params[:id])
  end

  # POST /news
  # POST /news.json
  def create
    @news_item = News.new(params[:news])

      if @news_item.save
        if params[:news][:article_image].present?
          render :crop
        else
           redirect_to news_index_url, notice: 'News Article was successfully created.' 
        end
      else
        render action: "index" 
      end
  end

  def crop
  end

  # PUT /news/1
  # PUT /news/1.json
  def update
    @news_item = News.find(params[:id])

      if @news_item.update_attributes(params[:news])
        if params[:news][:article_image].present?
          render :crop
        else
          redirect_to news_index_url, notice: 'News Article was successfully updated.' 
        end
      else
        render action: "index" 
      end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news_item = News.find(params[:id])
    @news_item.destroy
    redirect_to news_index_url, notice: 'News Article was destroyed' 
  end
end

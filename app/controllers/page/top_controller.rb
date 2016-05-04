class Page::TopController < ApplicationController
  def index
  end
  
  def show
    render :layout => 'page/top_show'
  end
end

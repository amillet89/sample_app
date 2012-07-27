class PagesController < ApplicationController
  
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def contact
    
  end
  
  def about
    
  end

  def help
    
  end
  
  def search
  	@url = params[:url]
  	@selector = params[:selector]
  	respond_to do |format|
  		format.html { render 'pages/search' }
  		format.js 
  	end
  end
  
  def preview
  	@url2 = params[:url2]
  	respond_to do |format|
  		format.html { render 'pages/preview' }
  		format.js 
  	end
  end
  
end

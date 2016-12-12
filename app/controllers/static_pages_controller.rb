class StaticPagesController < ApplicationController
  def index
      
  end
    
  def landing_page
      @featured_product = Product.first
      @products = Product.all
      @products = Product.limit(3)
  end
    
  def image_tag 
      @products = Product.image_url
  end
  
end
class PagesController < ApplicationController
  def index
    
    @links = Link.all
    @links = Link.paginate(:page => params[:page], :per_page => 25)

  end
end

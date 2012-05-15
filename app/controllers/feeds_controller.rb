class FeedsController < ApplicationController

  def index
    @feeds = Feed.all
    @feed = Feed.new
  end
  
  def create
    params[:feed][:name] = FeedClient.new(params[:feed][:uri]).name
    Feed.create(params[:feed])
    redirect_to :action => "index"
  end

end

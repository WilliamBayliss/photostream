require 'flickr'
class StaticPagesController < ApplicationController
  def index
    if params[:flickr_user_id]

      flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
      @photostream = flickr.people.getPhotos :user_id => params[:flickr_user_id]
    end
  end
end

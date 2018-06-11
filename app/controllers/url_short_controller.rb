class UrlShortController < ApplicationController
    before_action :authorize
    def index
        @url = Url.new
    end
    def create
       @url = Url.new
       @url.long_url = params[:long_url]
       if @url.save
        redirect_to dash_path
       end
    end
end

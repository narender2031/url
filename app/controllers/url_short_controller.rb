class UrlShortController < ApplicationController
    before_action :authorize
    def index
        @url = Url.new
        @url_list = current_user.urls.all
    end
    def create
       @url = current_user.urls.new
       puts params[:url]["long_url"]
       @url.long_url = params[:url]["long_url"]
       if @url.save
        redirect_to dash_path
       end
    end
end

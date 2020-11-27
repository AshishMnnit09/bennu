module Users
  module Api
    class Users::Api::ArticlesController < ApplicationController
      def index
        articles = Article.all
        render :json => articles
      end

      def show
        article = Article.find(params[:id])
        render :json => article
      end
      def method_name
        debugger
        article = Article.find(params[:id])
        render :json => article
      end
      private
      def article_params
        params.require(:article).permit(:title, :text)
      end
    end
  end 
end
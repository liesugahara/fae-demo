class HomeController < ApplicationController
    def index

    end
    def articles
        @articles = Article.all
    end
    def show
    end
    
    private
    def set_article
        @article = Article.find(params[:id])
    end
    def article_params
        params.require(:article).permit(:title, :body)
    end

end
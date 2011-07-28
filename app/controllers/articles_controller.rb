class ArticlesController < ApplicationController
def index
 @user = User.find(2)
 @articles = @user.articles.all.paginate(:page =>params[:page], :per_page => 5) 

 end
 
def new
    @user = User.find(2)
    @article = @user.articles.new
     render :action => "new"
  end
  
def create
    @user = User.find(2)
   
    @article = @user.articles.create(params[:article])
    render :action => "show"
     end
     
def show
    @user = User.find(2)
    @article = @user.articles.find(params[:id])
    render :action => "show"
  end


 
 
  def update
    @user = User.find(params[:id])
    @article = @user.articles.find(params[:id])
      if @user.articles.update_attributes(params[:article])
        redirect_to(@articles, :notice => 'article was successfully updated.')   
      else
        render :action => "edit" 
      
      
    end
  end
  
def destroy
    @user = User.find(params[:user_id])
    @article = @user.articles.find(params[:id])
    @article.destroy
    redirect_to(articles_url)
  end

end

class CommentsController < ApplicationController
def index
 @comment = Comment.find(:id)


 end
def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment])
  
    if @comment.save
    Admin.admin_approval(@comment).deliver
   end

   redirect_to article_path(@article)
  end
 
 def approve
 
 #render :text => params.inspect and return
 @comment = Comment.find(params[:cid])
 @comment.update_attributes(:approve => params[:approve])

render :text => "Done" and return
 
 end
  
end

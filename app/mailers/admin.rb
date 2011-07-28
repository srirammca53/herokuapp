class Admin < ActionMailer::Base
  default :from => "sriram.in22@gmail.com"
  


def admin_approval(comment)
@comment=comment

@article=@comment.article
@user=@article.user
@user.email

@url = ""
mail(:to => @user.email,
:subject => "comments for Approval")


end

end

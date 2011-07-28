class Admin < ActionMailer::Base
  default :from => "sriram.in22@gmail.com"
  


def admin_approval(author)
@author=author

@url = ""
mail(:to => @author.email,
:subject => "comments for Approval")


end

end

class Contact < ActionMailer::Base
  default :from => "sriram.in20.com"
  
def contact

mail(:to => sriram.in22@gmail.com,
:subject => "New Contact ")


end
end

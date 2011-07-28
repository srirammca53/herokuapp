class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments
   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
     :storage => :s3,
     :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
     :bucket => "sharmanyros",
      :path => "/sriram/images/:style/:id/:filename" ;
  has_attached_file :file,
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :bucket => "sharmanyros",
      :path => "/sriram/files/:style/:id/:filename" ;
  def self.per_page
       10
      end



end

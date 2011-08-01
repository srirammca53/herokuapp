class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    #:url  => "/ckeditor_assets/pictures/:id/:style_:basename.:extension",
                    #:path => ":rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension",
	                  :styles => { :content => '575>', :thumb => '80x80#' }
	                  :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :bucket => "sharmanyros",
      :path => "/sriram/files/:style/:id/:filename" ,
      :default_url => "/sriram/files/:style/:id/:filename";
	
	validates_attachment_size :data, :less_than=>2.megabytes
	
	def url_content
	  url(:content)
	end
	
	def url_thumb
	  url(:thumb)
	end
	
	def to_json(options = {})
	  options[:methods] ||= []
	  options[:methods] << :url_content
	  options[:methods] << :url_thumb
	  super options
  end
end

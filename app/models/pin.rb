class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
	:styles => { :medium => "300x300>", :thumb => "100x100>"}
	:storage => :s3,
  :bucket => 'OMfairpercent',
  :s3_credentials => {:access_key_id => ENV['AKIAI4IDCMKQ3FZSWK5Q'], :secret_access_key => ENV['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']}
end

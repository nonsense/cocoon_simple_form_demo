class Image < Task
  has_attached_file :image

  validates_attachment_content_type :image, :content_type => /\Atext\/.*\Z/
end

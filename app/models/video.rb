class Video < Task
  has_attached_file :video

  validates_attachment_content_type :video, :content_type => /\Atext\/.*\Z/
end


class Post < ActiveRecord::Base
  validates :content_or_picture, presence: true

  mount_uploader :picture, PictureUploader

  belongs_to :user

  private
    def content_or_picture
      content.presence or picture.presence
    end

end

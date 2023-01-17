class ServiceSerializer < ActiveModel::Serializer
  attributes :id
end

class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :duration, :class_time, :fee, :image
  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
end

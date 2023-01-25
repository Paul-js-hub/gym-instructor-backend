class ServiceSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :duration, :class_time, :fee, :image, :description
  def image
    return unless object.image.attached?

    {
      url: rails_blob_url(object.image)
    }
  end
end

class Photo < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "photo_id", optional: true
end

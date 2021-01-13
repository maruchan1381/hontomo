class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :image
    validates :author
    validates :date
  end
end

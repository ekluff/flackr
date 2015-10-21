class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :asset, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :asset, content_type: /\Aimage\/.*\Z/

  validates :title, { presence: true, uniqueness: true }
  validates :caption, { presence: true }
  validates :asset, presence:true
end

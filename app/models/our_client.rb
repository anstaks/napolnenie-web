class OurClient < ActiveRecord::Base
  attr_accessible :logo, :title, :description

  has_attached_file :logo, styles: { thumb: "110x110!" },
                             path: ":rails_root/public/system/our_client/:attachment/:id/:style/:filename",
                             url: "/system/our_client/:attachment/:id/:style/:filename",
                             default_style: :thumb
end

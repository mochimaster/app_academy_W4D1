# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  artwork_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord
  # validates :user_id, :artwork_id, presence: true
  #TODO
  # validates [:user_id, :artwork_id], presence: true
  belongs_to :user,
  foreign_key: :user_id,
  class_name: :User
  
  belongs_to :artwork,
  foreign_key: :artwork_id,
  class_name: :Artwork
end

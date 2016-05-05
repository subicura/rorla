# == Schema Information
#
# Table name: lectures
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  title       :string(255)      not null
#  content     :text(65535)
#  youtube_url :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Lecture < ActiveRecord::Base

  resourcify
  include Authority::Abilities

  belongs_to :course
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :destroy
end

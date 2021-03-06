# == Schema Information
#
# Table name: lectures
#
#  id           :integer          not null, primary key
#  course_id    :integer
#  title        :string(255)      not null
#  content      :text(65535)
#  youtube_url  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  published    :boolean          default(FALSE)
#  published_at :datetime
#

class Lecture < ActiveRecord::Base

  resourcify
  include Authority::Abilities

  belongs_to :course
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :destroy

  scope :published, -> { where( published: true ).order(published_at: :desc)}
  scope :my_lectures, -> (user) { where( user: user).order(updated_at: :desc)}
end

class Note < ActiveRecord::Base
	extend FriendlyId
  belongs_to :user
  delegate :email, to: :user, allow_nil: true, prefix: 'user'  
  friendly_id :title, use: [:slugged, :finders]

  validates :title, :content, presence: true

  def should_generate_new_friendly_id?
    if !slug? || title_changed?
      true
    else
      false
    end
  end
end


class Post < ActiveRecord::Base
	validates :content, presence: true

	belongs_to :group, counter_cache: :posts_count
	belongs_to :author, class_name: "User", foreign_key: :user_id

	delegate :title, to: :user, prefix: true
	scope :recent, -> { order("updated_at DESC") }

	def editable_by?(user)
		user && user == author
	end
end

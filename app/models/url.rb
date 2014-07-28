class Url < ActiveRecord::Base
  validates :alias, uniqueness: true, presence: true, length: { in: 1..100 }
  validates :link, presence: true, length: { maximum: 10_000 }
  validates :public, presence: true

  scope :published, -> { where(public: true) }
  scope :pagination, ->(page, limit) { paginate(page: page, per_page: limit || 10) }
end

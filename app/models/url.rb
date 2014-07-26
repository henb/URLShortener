class Url < ActiveRecord::Base
  validates :alias, uniqueness: true, presence: true, length: { in: 1..100 }
  validates :link, presence: true, length: { maximum: 10000 }
  validates :public, presence: true
end

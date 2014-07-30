class Url < ActiveRecord::Base
  validates :alias, uniqueness: true, presence: true, length: { in: 1..100 }
  validates :link, presence: true, length: { maximum: 10_000 }
  validates :public, presence: true

  scope :published, -> { where(public: true) }
  scope :pagination, ->(page, limit) { paginate(page: page, per_page: limit || 10) }
  scope :url_alias, ->(id) { find_by(alias: id) }

  before_save :snake_url

  def snake_url
    self.alias.strip!
    return nil if self.alias.empty?
    return self.alias = 'lomai_dalwe' if self.alias.index(/urls|api|random/)
    self.alias.to_s.gsub!(/\W/, '_')

    if self.alias.count('a-zA-Z0-9') > 0
      self.alias = self.alias[0..self.alias.rindex(/[a-zA-Z0-9]/)]
      self.alias = self.alias[self.alias.index(/[a-zA-Z0-9]/)..-1]
    end
  end
end

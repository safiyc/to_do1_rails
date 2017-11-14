class Task < ActiveRecord::Base
  belongs_to :list

  validates :description, :presence => true

  def self.not_done
    where(done: false)
  end

  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day)}

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
end

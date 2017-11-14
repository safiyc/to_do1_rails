class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true

  # query is separated into multi lines for readability:
  scope :most_tasks, -> {(
    select("lists.id, lists.name, lists.description, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("lists.id")
    .order("tasks_count DESC")
    .limit(10)
    )}

  # can query lists by (exact) name:
  scope :list_name, -> (name_parameter) { where(name: name_parameter)}

  # can query lists by general match (ex. "Smiths" can return "John Smiths", "Jane Smiths", etc.)
  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
end

class Task < ApplicationRecord
  validates :title, presence:true, length: {minimum: 5}
  belongs_to :user

  def complete!
    self.completed = true
    save
  end

end

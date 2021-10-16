class Task < ApplicationRecord
  validates :title, presence:true, length: {minimum: 5}
  belongs_to :user

  def complete!
    self.completed = true
    save
  end
  
  $completed = [
    ['Later',1],
    ['Next',2],
    ['Now',3]
  ]

end

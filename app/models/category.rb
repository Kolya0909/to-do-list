class Category < ApplicationRecord
    has_many :tasks, -> {includes :user}
end

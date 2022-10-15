class Post < ApplicationRecord
    validates :title, length: { minimum: 1, maximum: 100}
    validates :caption, length: { minimum: 1, maximum: 300}
end

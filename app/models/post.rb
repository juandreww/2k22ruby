class Post < ApplicationRecord
    validates :title, length: { minimum: 1, maximum: 3}
    validates :caption, length: { minimum: 1, maximum: 3}
end

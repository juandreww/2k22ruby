class Console < ApplicationRecord
    validates :name, presence: true
    validates :manufacturer, presence: true

    def formatted_name
        "#{manufacturer} #{name}"
    end

end
  
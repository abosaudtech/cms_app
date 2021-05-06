class Category < ApplicationRecord
    has_many :blogs

    scope :visible, lambda { where(:visible => true ) }
    # We can call this scope by typing:
    # Category.visible
    scope :invisible, lambda { where(:visible => false) }
    # We can call this scope by typing:
    # Category.invisible
    scope :sorted, lambda { order(:position => :asc) }
    # We can call this scope by typing:
    # Category.sorted
    scope :newest, lambda { order(:created_at => :desc) }
    # Category.newest
    scope :search, lambda { |name| where(["name LIKE ?", "%#{name}%"]) }
    # Category.search("Initial")
    
end

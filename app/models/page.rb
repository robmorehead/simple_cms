class Page < ApplicationRecord

    has_and_belongs_to_many :admin_users
    belongs_to :subject, { :optional => true }
    has_many :sections    

    scope :visible, lambda { where(:visible => true) }
    scope :invisible, lambda { where(:visible => false) }
    scope :sorted, lambda { order("position ASC") }
    scope :newest_first, lambda { order("created_at DESC") }
end

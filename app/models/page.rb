class Page < ApplicationRecord

    has_and_belongs_to_many :admin_users
    belongs_to :subject, { :optional => true }
    has_many :sections    

end

class Role < ActiveRecord::Base
    attr_accessible :name, :description
    validates_uniqueness_of :name
    validates :name, :presence => true
    has_many :users
end

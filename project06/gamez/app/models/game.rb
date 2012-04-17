class Game < ActiveRecord::Base
    belongs_to :user
    validates :title, :presence => true
    RATE = %w[Horrible Lame MEH OHMYGOD]
    def created_by?(user)
        self.user_id == user.id
    end
end

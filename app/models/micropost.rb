class Micropost < ActiveRecord::Base
  attr_accessible :content
  
   belongs_to :user
   
   validates :content, :presence => true, :length => { :maximum => 140 }
   validates :user_id, :presence => true
   
   default_scope :order => 'microposts.created_at DESC'
   
   # Retourne les micro-messages des utilisateurs suivi par un utilisateur donné.
   scope :from_users_followed_by, lambda { |user| followed_by(user) }
   
   private
   
    def self.from_users_followed_by(user)
      followed_ids = users.following.map(&:id).join(", ")
      where("user_id IN (#{followed_ids})) OR user_id = :user_id",
          { :user_id => user })
    end
   
end

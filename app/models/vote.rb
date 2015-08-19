class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :gif

  after_save :update_vote_total

  def update_vote_total
    gif = self.gif
    gif.vote_total = gif.votes.inject(0){|sum, x| sum + x.value}
    gif.save!
  end
  
end

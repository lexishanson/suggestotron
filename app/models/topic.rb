class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def upvote
    self.votes.create
  end

  def votes_count
    self.votes.length
  end

  def downvote
    self.votes.first.delete
  end

  def self.sort_by_vote
  end

end

class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    # self.auditions.pluck(:actor).uniq
    # self.auditions.map do|auditon|
    #   audition.actor
    # end
    self.auditions.pluck(:actor)
  end

  def locations
    # self.auditions.pluck(:location).uniq
    self.auditions.pluck(:location)
  end

  def lead
    lead_actor = self.auditions.find{|audition| audition.hired} 
    # find get the first value that match
    lead_actor ? lead_actor : 'no actor has been hired for this role'
    # if lead_actor 
    #   return actor
    # else
    #   return 'no actor has been hired for this role'
    # end
  end

  def understudy
    second_actor = self.auditions.filter{|audition| audition.hired}
    # filter return everything that match
    second_actor[1] ? second_actor[1]: 'no actor has been hired for understudy for this role'
    # if second_actor.length > 1
    #   return actor[1]
    # else
    # 'no actor has been hired for understudy for this role'
    # end
  end

end
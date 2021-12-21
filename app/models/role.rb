class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.pluck(:actor).uniq
  end

  def locations
    self.auditions.pluck(:location).uniq
  end

  def lead
    hired_actor = self.auditions.find{|audition| audition.hired}
    if hired_actor 
      return actor
    else
      return 'no actor has been hired for this role'
    end
  end

  def understudy
    second_actor = self.auditions.filter{|audition| audition.hired}
    if second_actor.length > 1
      return actor[1]
    else
    'no actor has been hired for understudy for this role'
    end
  end

end
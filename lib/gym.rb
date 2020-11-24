class Gym
  attr_reader :name

  @@all = []

  def initialize(name) 
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do | memberships |
      memberships.gym == self
    end
  end

  def members
    our_members = self.memberships.map do | gym_memberships |
      gym_memberships.member
    end
    our_members.uniq
  end

  def member_name
    self.members.map do | members |
      members.name
    end
  end

  def gym_lift_total
    lift_total = 0
    members.collect do | member |
      lift_total += member.lift_total
    end
    lift_total
  end
end

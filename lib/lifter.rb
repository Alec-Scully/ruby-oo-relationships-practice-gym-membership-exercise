class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do | memberships |
      memberships.member == self
    end
  end

  def gyms
    my_gyms = self.memberships.map do | memberships |
      memberships.gym
    end
    my_gyms.uniq
  end

  def self.average
    average = 0
    self.all.each do | lifter |
      average += lifter.lift_total
    end
    average.to_f / self.all.length
  end

  def total_cost
    total_cost = 0
    self.memberships.map do | memberships |
      total_cost += memberships.cost 
    end
    total_cost
  end

  def new_membership(cost, gym)
    new_membership = Membership.new(cost, self, gym)
  end
end

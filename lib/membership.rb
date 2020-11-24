class Membership
  attr_reader :cost
  attr_accessor :gym, :member

  @@all = []

  def initialize(cost, member, gym)
    @cost = cost
    @member = member
    @gym = gym

    self.class.all << self
  end

  def self.all
    @@all
  end
end

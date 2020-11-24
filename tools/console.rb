# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#members (name, lift total)
mem1 = Lifter.new("Alec", 50)
mem2 = Lifter.new("Raul", 200)
mem3 = Lifter.new("Brian", 101)
mem4 = Lifter.new("Ricardo", 70)
mem5 = Lifter.new("Meredith", 150)
mem6 = Lifter.new("Angelo", 300)

#gyms (gym name)
gym1 = Gym.new("Big Lifties")
gym2 = Gym.new("Club One")
gym3 = Gym.new("Just Arm Day")
gym4 = Gym.new("Definitely Not a Taco Bell")

#memberships(cost, member name, gym)
membership1 = Membership.new(25, mem1, gym1)
membership2 = Membership.new(50, mem1, gym2)
membership3 = Membership.new(100, mem1, gym3)
membership4 = Membership.new(25, mem2, gym1)
membership5 = Membership.new(100, mem3, gym3)
membership6 = Membership.new(25, mem4, gym1)
membership7 = Membership.new(25, mem4, gym4)
membership8 = Membership.new(50, mem4, gym2)
membership9 = Membership.new(50, mem5, gym2)
membership10 = Membership.new(100, mem6, gym3)
membership11 = Membership.new(7.50, mem1, gym4)


binding.pry

puts "Gains!"

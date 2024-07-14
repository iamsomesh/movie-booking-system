# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, Movie
      can :read, Showtime
      can :create, Booking
      can [:read, :destroy], Booking, user_id: user.id
    end
  end
end

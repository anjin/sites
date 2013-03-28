class Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :create], Post
    can :read, Category
    can [:read, :create], Tag

    if user
      can :vote, Post
      if user.admin?
        can :manage, :all
      else
        # can comment
      end
    end

  end
end

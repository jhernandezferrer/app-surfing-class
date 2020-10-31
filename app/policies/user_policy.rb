class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def my_lessons?
    true
  end
end

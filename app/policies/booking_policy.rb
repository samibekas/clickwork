class BookingPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

   def confirm?
    true
   end

  def cancel?
    true
   end

   def reject?
    true
   end

  def create?
    new?
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

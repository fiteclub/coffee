class AdminPolicy < ApplicationPolicy
  def index?
    # What roles have access to this?
    true
  end
end

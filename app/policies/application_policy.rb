class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    return true if user.superadmin?

    false
  end

  def show?
    return true if user.superadmin?

    false
  end

  def create?
    return true if user.superadmin?

    false
  end

  def new?
    return true if user.superadmin?

    create?
  end

  def update?
    return true if user.superadmin?

    false
  end

  def edit?
    return true if user.superadmin?

    update?
  end

  def destroy?
    return true if user.superadmin?

    false
  end

  def superadmin?
    return true if twitter == "jamescmartinez" || Rails.application.credentials[:superadmin]

    false
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end

class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    index?
  end

  def create?
    user.present? && user.admin?
  end
 
  def update?
    create?
  end
 
  def destroy?
    create?
  end
 
  private
 
    def article
      record
    end
end
class Task < ActiveRecord::Base
  has_many :sub_tasks
  accepts_nested_attributes_for :sub_tasks, :reject_if => :all_blank, :allow_destroy => true

  # Better solution at:
  # http://stackoverflow.com/questions/2553931/can-nested-attributes-be-used-in-combination-with-inheritance
  def self.attributes_protected_by_default
    # default is ["id","type"]
    ["id"]
  end
end

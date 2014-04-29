class AddImageAndVideoToTasks < ActiveRecord::Migration
  def self.up
    add_attachment :tasks, :image
    add_attachment :tasks, :video
  end

  def self.down
    remove_attachment :tasks, :image
    remove_attachment :tasks, :video
  end
end

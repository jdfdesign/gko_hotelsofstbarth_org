class RemoveTestDatas < ActiveRecord::Migration
  def up
    Post.with_title('post').map(&:destroy)
  end
end
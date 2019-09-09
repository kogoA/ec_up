class Delete < ActiveRecord::Migration[5.2]
  def change
    remove_reference :favorites, :micropost_id, foreign_key: true
  end
end

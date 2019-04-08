class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :homeworks do |t|
      # t.index [:users_id, :homework_id]
      # t.index [:homework_id, :users_id]
    end
  end
end

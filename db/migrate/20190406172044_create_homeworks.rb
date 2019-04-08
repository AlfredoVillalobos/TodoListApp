class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end

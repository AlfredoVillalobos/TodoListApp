class CreateRegistries < ActiveRecord::Migration[5.2]
  def change
    create_table :registries do |t|
      t.boolean :carried_out
      t.boolean :unrealized
      t.references :user, foreign_key: true
      t.references :homework, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end

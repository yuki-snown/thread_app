class AddResToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :res, :string
  end
end

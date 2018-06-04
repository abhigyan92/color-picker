class AddColorToSelection < ActiveRecord::Migration[5.2]
  def change
    add_column :selections, :color, :string
  end
end

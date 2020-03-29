class AddStatusToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :status, :string, null: false, default: 0
  end
end

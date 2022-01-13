class AddSalerToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :saler_id, :integer
  end
end

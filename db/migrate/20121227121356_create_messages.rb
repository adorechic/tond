class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :room
      t.string :body
      t.timestamp :deleted_at

      t.timestamps
    end

    add_index :messages, :room_id
  end
end

class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :emailable_type
      t.integer :emailable_id
      t.timestamps
    end

    add_index :emails, %i[emailable_type emailable_id]
  end
end

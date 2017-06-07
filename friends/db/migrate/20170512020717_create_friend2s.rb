class CreateFriend2s < ActiveRecord::Migration[5.1]
  def change
    create_table :friend2s do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

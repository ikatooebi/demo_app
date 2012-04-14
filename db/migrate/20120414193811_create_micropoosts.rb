class CreateMicropoosts < ActiveRecord::Migration
  def change
    create_table :micropoosts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

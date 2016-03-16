class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :reply, :string
      t.column :by, :string

      t.timestamps
    end

    change_table :books do |t|
      t.timestamps
    end
  end
end

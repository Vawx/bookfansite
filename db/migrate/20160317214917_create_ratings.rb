class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.column :rating, :integer

      remove_column :books, :rating
    end

    change_table :books do |b|
      b.column :rating, :decimal
    end
  end
end

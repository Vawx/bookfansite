class CreateBook < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :title, :string
      t.column :author, :string
      t.column :about, :string
      t.column :description, :string
      t.column :price, :float
      t.column :image, :string
      t.column :genre, :string
      t.column :rating, :integer
      t.column :isbn, :integer
    end
  end
end

class CreateAddTitleToLinks < ActiveRecord::Migration
  def self.up
      change_table :links do |t|
      t.add_column :title, :string
  end
end

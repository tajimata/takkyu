class AddSpinToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :spin, :integer
  end
end

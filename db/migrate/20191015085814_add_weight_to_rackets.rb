class AddWeightToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :weight, :integer
  end
end

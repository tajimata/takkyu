class AddPowerToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :power, :integer
  end
end

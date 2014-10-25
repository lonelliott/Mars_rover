class CreateRovers < ActiveRecord::Migration
  def change
    create_table :rovers do |t|
      t.integer :r1_start
      t.string :r1_start_direction
      t.string :r1_commands
      t.integer :r2_start
      t.string :r2_start_direction
      t.string :r2_commands

      t.timestamps
    end
  end
end

class CreatePineappleSteps < ActiveRecord::Migration
  def self.up
    create_table :pineapple_steps do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :pineapple_steps
  end
end

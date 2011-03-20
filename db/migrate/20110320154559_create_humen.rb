class CreateHumen < ActiveRecord::Migration
  def self.up
    create_table :humen do |t|
      t.string :first_name, :limit => 100
      t.string :last_name, :limit => 100
      t.integer :sex, :limit => 1

      t.date :birth_date
      t.date :dead_date
      t.text :about
      t.integer :father_id
      t.integer :mother_id

      t.timestamps
    end
  end

  def self.down
    drop_table :humen
  end
end

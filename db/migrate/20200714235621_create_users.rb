class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :password_digest
      t.integer :happiness
      t.integer :sleepiness
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
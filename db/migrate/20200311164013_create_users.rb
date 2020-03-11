class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.date :birthDate
      t.string :sex

      t.timestamps
    end
  end
end

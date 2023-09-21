class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :email
      t.string :password_digest
      t.text :bio

      t.timestamps
    end
  end
end

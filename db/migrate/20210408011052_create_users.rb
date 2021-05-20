class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :photo
      t.string :name
      t.string :role, default: 'user'
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

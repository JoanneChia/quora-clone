class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :username
			t.string :password
			t.string :email, unique: true
			t.timestamp null: false
		end
	end
end
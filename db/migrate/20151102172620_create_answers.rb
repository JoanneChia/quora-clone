class CreateAnswers < ActiveRecord::Migration
	def change
		create_table :answers do |t|
			t.string :question_id, index: true
			t.integer :user_id, index: true
			t.string :body
			t.timestamp null: false
		end
	end
end
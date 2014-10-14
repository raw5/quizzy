class CreateChoices < ActiveRecord::Migration
  def change
    create_table :quizzy_choices do |t|
      t.string :text
      t.string :image
      t.boolean :good
      t.integer :question_id

      t.timestamps
    end
  end
end

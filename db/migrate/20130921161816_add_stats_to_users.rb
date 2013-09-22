class AddStatsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight, :decimal

    add_column :users, :height, :decimal

    add_column :users, :gender, :string

    add_column :users, :fitness_level, :integer

  end
end

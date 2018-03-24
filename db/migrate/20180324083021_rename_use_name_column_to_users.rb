class RenameUseNameColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :use_name, :user_name
  end
end

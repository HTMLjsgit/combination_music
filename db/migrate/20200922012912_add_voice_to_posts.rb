class AddVoiceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :voice, :boolean, default: false
  end
end

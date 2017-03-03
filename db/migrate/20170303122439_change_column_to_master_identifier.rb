class ChangeColumnToMasterIdentifier < ActiveRecord::Migration[5.0]
    # 変更内容
    def up
        change_column :masters, :characteristic1_id, :integer, null: true, default: 0
        change_column :masters, :characteristic2_id, :integer, null: true, default: 0
        change_column :masters, :characteristic3_id, :integer, null: true, default: 0
        change_column :masters, :type2_id, :integer, null: true, default: 0
        change_column :masters, :type1_id, :integer, null: true, default: 0
    end

    # 変更前の状態
    def down
        change_column :masters, :characteristic1_id, :integer, null: false, default: 0
        change_column :masters, :characteristic2_id, :integer, null: false, default: 0
        change_column :masters, :characteristic3_id, :integer, null: false, default: 0
        change_column :masters, :type1_id, :integer, null: false, default: 0
        change_column :masters, :type2_id, :integer, null: false, default: 0
    end
  end

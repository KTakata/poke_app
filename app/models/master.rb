class Master < ActiveRecord::Base
  belongs_to :type1, class_name: 'Type', foreign_key: 'type1_id'
  belongs_to :type2, class_name: 'Type', foreign_key: 'type2_id', optional: true
  belongs_to :characteristic1, class_name: 'Characteristic', foreign_key: 'characteristic1_id'
  belongs_to :characteristic2, class_name: 'Characteristic', foreign_key: 'characteristic2_id', optional: true
  belongs_to :characteristic3, class_name: 'Characteristic', foreign_key: 'characteristic3_id', optional: true
  def self.search(search, search_type_id, param_page) # self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      if search_type_id
        Master.where(['name LIKE ?', "%#{search}%"]).order(:no).page(param_page)
      else
        # binding.pry
        Master.where(['name LIKE ?', "%#{search}%"]).order(:no).page(param_page)
      end
    else
      if search_type_id
        Master.where(['type1_id = ? or type2_id = ?', "%#{search_type_id}%"]).order(:no).page(param_page)
      else
        Master.order(:no).page(param_page)
      end
    end
  end
end

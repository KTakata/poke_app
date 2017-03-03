class TypesController < ApplicationController
  before_filter :find_types

  def index; end

  def show
    @type = Type.find(params[:id])
    weaks = WeakCompatibility.where(type1_id: @type.id)
    strongs = StrongCompatibility.where(type1_id: @type.id)
    longs = []
    shorts = []
    max_count = 0
    weaks.length > strongs.length ? max_count = weaks.length : max_count = strongs.length
    arr = []

    for num in 0..max_count do
      var1 = unless weaks[num].nil?
               weaks[num].target_type.jap_name_kana
             else
               ''
             end
      var2 = unless strongs[num].nil?
               strongs[num].target_type.jap_name_kana
             else
               ''
             end
      if var1 == '' && var2 == ''
      else
       a = [var1, var2]
       arr.push(a)
     end
    end
    @tables = arr
  end

  private

  def find_types
    @types = Type.all
  end
end

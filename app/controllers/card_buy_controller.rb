class CardBuyController < ApplicationController
 
  def show
    @item = Item.find(params[:item_id])
    # @item = Item.find(1)
    #１は仮置きです
  end

  def create #クレジット購入
    card = Card.find_by(user_id: current_user.id)
    if card.blank?
      redirect_to controller: "card",action:"new"
      # flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      @item = Item.find(params[:item_id])
      
      
     # 購入した際の情報を元に引っ張ってくる
      Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
     # キーをセットする(環境変数においても良い)
      Payjp::Charge.create(
      amount: @item.price, #支払金額
      customer: card.customer_id, #顧客ID
      currency: 'jpy', #日本円
      )

     # ↑商品の金額をamountへ、cardの顧客idをcustomerへ、currencyをjpyへ入れる
      end
  end
end
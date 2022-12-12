require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end
  


  describe '投稿の保存' do
    context '商品が投稿できる場合' do
      it 'タイトル、金額、説明が存在すれば投稿できる' do
        expect(@product).to be_valid
      end  
    end
    context '商品が投稿できない場合' do
      it 'タイトルが空では投稿できない' do
        @product.title = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("タイトルを入力してください")       
      end

      it '金額が空では投稿できない' do
        @product.money = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("寄付金額を入力してください")
      end
      it '説明が空では投稿できない' do
        @product.content = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("説明を入力してください")
      end
      it '金額が文字列では投稿できない' do
        @product.money = 'テスト'
        @product.valid?
        expect(@product.errors.full_messages).to include("寄付金額は数値で入力してください")
      end
    end
  end
end

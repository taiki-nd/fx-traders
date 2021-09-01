require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe '取引履歴の保存' do

    context '取引が記録できる場合' do
      it 'date, ashi_id, pair_id, pips, entry_basis, issue_id, lose_reason_textが入力されていれば記録できる' do
        expect(@record).to be_valid
      end
    end

    context '取引が記録できない場合' do
      it 'dateが空では記録できない' do
        @record.date = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Date can't be blank")
      end
      it 'ashi_idが1では記録できない' do
        @record.ashi_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("Ashi can't be blank")
      end
      it 'pair_idが1では記録できない' do
        @record.pair_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("Pair can't be blank")
      end
      it 'pipsが空では記録できない' do
        @record.pips = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Pips can't be blank")
      end
      it 'pipsが半角英数混合では記録できない' do
        @record.pips = '500aa'
        @record.valid?
        expect(@record.errors.full_messages).to include("Pips is not a number")
      end
      it 'pipsが全角では記録できない' do
        @record.pips = '５０'
        @record.valid?
        expect(@record.errors.full_messages).to include("Pips is not a number")
      end
      it 'entry_basisが空では記録できない' do
        @record.entry_basis = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Entry basis can't be blank")
      end
      it 'issue_idが1では記録できない' do
        @record.issue_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("Issue can't be blank")
      end
      it 'lose_reason_textが空では記録できない' do
        @record.lose_reason_text = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("Lose reason text can't be blank")
      end
      it 'ユーザーが紐付いていなければ記録できない' do
        @record.user = nil
        @record.valid?
        expect(@record.errors.full_messages).to include('User must exist')
      end
    end
  end
end
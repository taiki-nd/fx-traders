require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @rule = FactoryBot.build(:rule)
  end

  describe '取引手法の保存' do

    context '手法が投稿できる場合' do
      it 'date, ashi_id, pair_id, pips, entry_basis, issue_id, lose_reason_textが入力されていれば記録できる' do
        expect(@rule).to be_valid
      end
    end

    context '手法が投稿できない場合' do
      it 'ashi_idが1では投稿できない' do
        @rule.ashi_id = '1'
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Ashi can't be blank")
      end
      it 'pair_idが1では投稿できない' do
        @rule.pair_id = '1'
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Pair can't be blank")
      end
      it 'overviewが空では投稿できない' do
        @rule.overview = ''
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Overview can't be blank")
      end
      it 'issue_idが1では投稿できない' do
        @rule.issue_id = '1'
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Issue can't be blank")
      end
      it 'overview_contentが空では投稿できない' do
        @rule.overview_content = ''
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Overview content can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @rule.user = nil
        @rule.valid?
        expect(@rule.errors.full_messages).to include('User must exist')
      end
      it 'entryが空では投稿できない' do
        @rule.entry = ''
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Entry can't be blank")
      end
      it 'exitが空では投稿できない' do
        @rule.exit = ''
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Exit can't be blank")
      end
      it 'summaryが空では投稿できない' do
        @rule.summary = ''
        @rule.valid?
        expect(@rule.errors.full_messages).to include("Summary can't be blank")
      end
    end
  end
end
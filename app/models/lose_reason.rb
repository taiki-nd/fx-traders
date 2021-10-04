class LoseReason < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '資金管理ができていなかった' },
    { id: 3, name: '損切りをしなかった' },
    { id: 4, name: '利食いをしなかった' },
    { id: 5, name: '損切りが早過ぎた' },
    { id: 6, name: '利食いが早過ぎて利益を伸ばせなかった' },
    { id: 7, name: 'エントリーが早過ぎた' },
    { id: 8, name: 'エントリーが遅過ぎた' },
    { id: 18, name: 'ルール通りに損切りした' },
    { id: 9, name: '資金管理ができていなかったが勝てた' },
    { id: 10, name: '損切りをしなかったが勝てた' },
    { id: 11, name: '利食いをしなかったが勝てた' },
    { id: 12, name: '損切りが早過ぎたが勝てた' },
    { id: 13, name: '利食いが早過ぎた' },
    { id: 14, name: 'エントリーが早過ぎたが勝てた' },
    { id: 15, name: 'エントリーが遅過ぎたが勝てた' },
    { id: 16, name: 'ルール通りに取引ができて勝てた' },
    { id: 17, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end
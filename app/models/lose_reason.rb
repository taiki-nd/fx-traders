class LoseReason < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '資金管理ができていなかった' },
    { id: 3, name: '損切りをしなかった' },
    { id: 4, name: '利食いをしなかった' },
    { id: 5, name: '損切りが早過ぎた' },
    { id: 6, name: '利食いが早過ぎた' },
    { id: 7, name: 'エントリーが早過ぎた' },
    { id: 8, name: 'エントリーが遅過ぎた' }
    { id: 9, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end
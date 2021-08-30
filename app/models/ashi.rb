class Ashi < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'tick' },
    { id: 3, name: '1分足' },
    { id: 4, name: '5分足' },
    { id: 5, name: '10分足' },
    { id: 6, name: '15分足' },
    { id: 7, name: '30分足' },
    { id: 8, name: '1時間足' },
    { id: 9, name: '2時間足' },
    { id: 10, name: '4時間足' },
    { id: 11, name: '8時間足' },
    { id: 12, name: '日足' },
    { id: 12, name: '週足' },
    { id: 12, name: '月足' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
  end
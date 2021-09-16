class Kind < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'スキャルピング' },
    { id: 3, name: 'デイトレーディング' },
    { id: 4, name: '短期売買（2~3日）' },
    { id: 5, name: 'スイングトレード' },
    { id: 6, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :rules
   has_many :records
 
end
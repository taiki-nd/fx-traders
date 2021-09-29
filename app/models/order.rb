class Order < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '成行買い' },
    { id: 3, name: '指値買い' },
    { id: 4, name: '逆指値買い' },
    { id: 5, name: '成行売り' },
    { id: 6, name: '指値売り' },
    { id: 7, name: '逆指値売り' }
  ]
 
   include ActiveHash::Associations
   has_many :records
 
end
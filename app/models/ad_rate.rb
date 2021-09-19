class AdRate < ActiveHash::Base
  self.data = [
    { id: 1, name: 'widh : height' },
    { id: 2, name: '300 : 250 ' },
    { id: 3, name: '320 : 100' },
    { id: 4, name: '600 : 90' },
    { id: 5, name: '970 : 90' }
  ]
 
   include ActiveHash::Associations
   has_many :advertisements
 
end
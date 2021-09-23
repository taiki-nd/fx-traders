class IndiMain < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '勝' },
    { id: 3, name: '負' }
  ]
 
   include ActiveHash::Associations
   has_many :records
   has_many :rules
 
  end
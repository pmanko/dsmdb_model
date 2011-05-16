class Datum < ActiveRecord::Base
  set_primary_key self.name.downcase+'_id'
  set_sequence_name 'id_seq'
  attr_accessible :event_id, :unit_id, :title, :numeric, :char, :description
  
  belongs_to :unit
  belongs_to :event
end

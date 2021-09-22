class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def next_record
    Record.where("id < ?", self.id).order("id DESC").first
  end

  def previous_record
    Record.where("id > ?", self.id).order("id ASC").first
  end

end

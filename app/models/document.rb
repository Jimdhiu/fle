class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  has_attachment :photo


  def expiration_date
    @expiration_date = @document_date + expiration[self.tag.name]
  end




end

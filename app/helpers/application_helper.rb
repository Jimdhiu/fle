module ApplicationHelper

  def check_documents_in_tag(documents, tag)
    documents.where(tag: tag)
  end
end

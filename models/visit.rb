# frozen_string_literal: true

# Visit model and methods
class Visit < ActiveRecord::Base

  validates_format_of :evid, with: /\A[A-z0-9]{8}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{12}\z/

  before_validation :cleanup_evid

  has_many :page_views, dependent: :destroy

  private

  def cleanup_evid
    self.evid = evid.gsub("evid_", "")
  end
end

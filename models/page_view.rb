# frozen_string_literal: true

# PageView model and methods
class PageView < ActiveRecord::Base

  belongs_to :visit, required: true

  auto_increment :position, scope: [:visit_id], force: true, lock: false, before: :create

  default_scope { order(timestamp: :asc) }
end

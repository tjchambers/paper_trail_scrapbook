# frozen_string_literal: true

class LegacyWidget < ActiveRecord::Base
  has_paper_trail ignore: :version, version: 'custom_version'
end

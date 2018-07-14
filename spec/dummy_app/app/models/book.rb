# frozen_string_literal: true

class Book < ActiveRecord::Base
  has_many :authorships, dependent: :destroy
  has_many :authors, through: :authorships

  has_many :editorships, dependent: :destroy
  has_many :editors, through: :editorships

  has_paper_trail

  def to_s
    title
  end
end

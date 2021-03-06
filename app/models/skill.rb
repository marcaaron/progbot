class Skill < ApplicationRecord
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :users

  scope :tech_skills, -> () { where(tech: true).order("name ASC") }
  scope :non_tech_skills, -> () { where(tech: false).order("name ASC") }

  audited

  audited associated_with: :project
  audited associated_with: :user
  has_associated_audits

end

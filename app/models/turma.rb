class Turma < ApplicationRecord
  has_many :alunos, dependent: :destroy
  belongs_to :professor
  has_one :sala, dependent: :destroy
end

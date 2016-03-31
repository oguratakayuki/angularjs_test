class TodoList < ActiveRecord::Base
  attr_accessible :name

  # Todoの作成日の新しい順に取得する
  has_many :todos, dependent: :destroy
  validates :name, presence: true

end

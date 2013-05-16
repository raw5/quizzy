class Response < ActiveRecord::Base
  belongs_to :question
  has_and_belongs_to_many :choices
  validates :question, presence: true
  validates_uniqueness_of :question_id, scope: :quiz_response_id

  attr_accessible :question, :choices, :choice_ids, :question_id

  def good?
    choices == question.good_choices
  end

  def has_made? choice
    choices.include? choice
  end
  
  default_scope includes([:question, :choices])

end
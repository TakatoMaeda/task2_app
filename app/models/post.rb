class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :start, presence: true
    validates :finish, presence: true
    validate :start_finish_check
    def start_finish_check
      errors.add("error")unless
      self.start < self.finish
    end

    validate :start_before_check
    def start_before_check
      errors.add("error") if start < Date.today
    end
end
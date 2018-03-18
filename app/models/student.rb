class Student < ActiveRecord::Base
  def to_s
    fullname = "error getting fullname"
    fullname = self.first_name + " " + self.last_name if self.first_name && self.last_name
    fullname
  end
end

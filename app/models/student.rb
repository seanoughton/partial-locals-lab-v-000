# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(student_name)
    #'Bob', 'Robert', 'Roberta', 'Shirley', 'Shelby'
    if student_name.empty?
      @return_value = Student.all
    else
      binding.pry
      student_name.capitalize
      @return_value = Student.all
    end
    @return_value
  end

end

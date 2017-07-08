require 'rails_helper'

describe 'Teacher' do
  context 'viewing thier students' do
    it 'as a teacher I can view my students' do
      user = create(:user, name: "anthony")
      user.roles.create(name: 'teacher')
      teacher = Teacher.create(email: 'MyString')
      TeacherStudent.create(user_id: user.id, teacher_id: teacher.id)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      expect(page).to have_content("anthony")
    end
  end
end

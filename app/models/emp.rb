class Emp < ApplicationRecord
	belongs_to :user, polymorphic: true

  enum team_type:{
    development_team: 0,
    marketing_team: 1
  }

	def self.add_emp(incoming_values)
		emp = Emp.new || Emp.find_by(user:incoming_values)
		emp.name = incoming_values['name']
    emp.dob = incoming_values['dob']
    emp.mobile = incoming_values['mobile']
    emp.email = incoming_values['email']
    emp.address = incoming_values['address']
    emp.location = incoming_values['location']
    emp.blood_group = incoming_values['blood_group']
    emp.status = incoming_values['status']
    emp.team_type = incoming_values['team_type']
    emp.user = incoming_values
    emp.save!

    user = User.find_by(id:emp.user_id)
    user.emp_id = emp.id
    user.save!
	end

end

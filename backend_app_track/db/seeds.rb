
Task.delete_all 
Job.delete_all 
Meetup.delete_all
MeetupContact.delete_all
User.delete_all 

u1 = User.create(name: "john smith", email: "john_smith@gmail.com", password: "test")
job1 = Job.create(company_name: "google", job_title: "junior developer", date: "02/24/21", salary: "120,000,00", status: false, note: "i really love google", contact_number: "315-315-3155", user_id: u1.id)
job2 = Job.create(company_name: "facebook", job_title: "junior developer", date: "02/24/21", salary: "110,000,00", status: false, note: "i really love facebook", contact_number: "315-315-3155", user_id: u1.id)
task1 = Task.create(task: "Send a thank you followup email", priority: 1, completed: false, job_id: job1.id)
meet1 = Meetup.create(name: "Tech Con", location: "Seattle", date: "02/16/21", user_id: u1.id) 
contact1 = MeetupContact.create(name: "Bill Gates", phone_number: "315-777-9999", email: "gatesMAN@gmail.com", meetup_id: meet1.id)







puts "Done seeding!"

Instructor.destroy_all
Student.destroy_all

vidhi  = Instructor.create(name: "Vidhi")
raurl   = Instructor.create(name: "Raul")
david = Instructor.create(name: "David")

Student.create(name: "Caleb", age: 25, major: "Computer Science", instructor_id: david.id)
Student.create(name: "Gian", age: 22, major: "Mathmatics", instructor_id: raul.id)
Student.create(name: "Anam", age: 25, major: "Engineering", instructor_id: vidhi.id)
Student.create(name: "Vien", age: 23, major: "Biology", instructor_id: raul.id)
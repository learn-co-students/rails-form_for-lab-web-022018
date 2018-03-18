s = SchoolClass.create([{title: "Class 1", room_number: 2}, {title: "Class 2", room_number: 13}])
Student.create([{first_name: "Sinclair", last_name: "Kinch", school_class: s[0]},
  {first_name: "Hannah", last_name: "Kinch", school_class: s[0]},
  {first_name: "Georgia", last_name: "Kinch", school_class: s[0]}])
Student.create([{first_name: "Gregory", last_name: "Kinch", school_class: s[1]},
  {first_name: "Peg", last_name: "Kinch", school_class: s[1]},
  {first_name: "Travis", last_name: "Kinch", school_class: s[1]}])

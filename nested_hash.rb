# Nested hashes:
people = {
    "Miranda" => {
        "Age" => "23",
        "D.O.B" => "05/02/1994",
        "Hair colour" => "Blonde"
    },
    "Olivia" => {
        "Age" => "26",
        "D.O.B" => "26/02/1996",
        "Hair colour" => "Peach" 
    },
    "Rosy" => {
        "Age" => "30",
        "D.O.B" => "16/07/1991",
        "Hair colour" => "Brown" 
    }
}

#print people["Miranda"]["Age"]

# Array of hashes:
animals = [
    {"name" => "Beryl", "species" => "cat", "owner" => "Katherine"},
    {"name" => "George", "species" => "cat", "owner" => "Daniel"},
    {"name" => "Poppy", "species" => "dog", "owner" => "Rosy"}
]

#print animals[0]["owner"]
#print animals.find { |n| n["name"] == "Beryl"}

# Find all the info about Acebook for each option
# Option 1: Add another key value pair for each service
option1 = {
  'acebook_password' => 'password123',
  'acebook_added' => '22/03/22',
  'makersbnb_password' => 'qwerty789',
  'makersbnb_added' => '22/03/22'
}

print option1["acebook_password"]
print option1["acebook_added"]

# Option 2: A nested hash
option2 = {
  'acebook' => {
    'password' => 'password123',
    'added_on' => '22/03/22',
  },
  'makersbnb' => {
    'password' => 'qwerty789',
    'added_on' => '22/03/22',
  }
}

print option2["acebook"]
print "This one"
print option2

# Option 3: An array of hashes
option3 =[
  {'service' => 'acebook', 'password' => 'password123', 'added_on' => '22/03/22'},
  {'service' => 'makersbnb', 'password' => 'qwerty789', 'added_on' => '22/03/22'}
]

print option3.find { |password| password["service"] == "acebook"}



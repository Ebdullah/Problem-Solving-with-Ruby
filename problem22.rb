# Problem 22: Categorize Age Write a method categorize_age that takes an integer age and
# returns a string: "child" if age is less than 13, "teen" if age is between 13 and 19, and "adult" if
# age is 20 or older.

def categorize_age(age)
    if age < 13
        "Child"
    elsif age.between?(13,19)
        "teen"
    else
        "adult"
    end
end

puts categorize_age(15)
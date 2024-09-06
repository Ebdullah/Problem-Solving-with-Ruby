# Problem 21: Boolean Logic with Multiple Conditions Write a method valid_user? that
# takes two arguments: age and has_permission. The method should return true if the user is
# older than 18 and has permission, or if the user is an administrator. Otherwise, it should return
# false.

def valid_user?(age,has_permission,is_administrator)
    if age > 18 && has_permission
        true
    elsif is_administrator
        true
    else
        false
    end
end

puts valid_user?(20,true,true)
puts valid_user?(22,false,false)
puts valid_user?(19,true,false)
puts valid_user?(18,false,false)


=begin
    A program to calculate the area of a circle. Where a user's input as the radius
    will be taken and used in the formular for calculating area of a circle:
    
    A = π r2
    
    where A = Area,
          π = pie (3.141),
          r = radius (user input)
=end

puts "Enter a radius for the circle"

def area_of_a_circle
    radius = gets.chomp.to_i
    pie = 3.141
    area = pie * (radius ** 2)

    return area
end

puts area_of_a_circle
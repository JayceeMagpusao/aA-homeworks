def sluggish_octopus(fishes)
    bigFish = nil 

    fishes.each do |fish|
        if bigFish == nil || fish.length > bigFish.length
            bigFish = fish
        end
    end
    bigFish
end

# fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(fishes)

# Class Array
#     def merge_sort(&prc)
#         prc ||= Proc.new{ |a, b| a <=> b }

#         return self if self.length < 2

#         middle = self.length / 2
#         left = self[0...middle]
#         right = self[middle..-1]

#         left_sorted = left.merge_sort(&prc)
#         right_sorted = right.merge_sort(&prc)

#         Array.merge(left_sorted, right_sorted, &prc)
#     end

#     private
#     def self.merge(left, right, &prc)
#         merged = []

#         until left.empty? || right.empty?
#             if prc.call(left[0], right[0]) == -1
#                 merged << left.shift
#             else
#                 merged << right.shift
#             end
#         end
#         merged + left + right
#     end
# end

# def biggest_fish(fishes)
#     prc = Proc.new{ |a, b| b <=> a }
#     fishes.merge_sort(&prc)[0]
# end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p biggest_fish(fishes)

def big_fish(fishes)
    biggest_fish = fishes[0]

    fishes.each do |fish|
        if fish.length > biggest_fish.length
            biggest_fish = fish
        end
    end
    biggest_fish
end

# p big_fish(fishes)

def slow_dance(direction, tiles_array)
    tiles_array.each.with_index do |tile, idx|
        return idx if tile == direction
    end
end

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
    tiles_hash[direction]
end

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
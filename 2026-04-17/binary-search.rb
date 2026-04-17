def main(arr_length, target_num, arr)
    index = arr_length / 2
    left  = 0
    right = arr_length - 1

    while (left < right && arr[index] != target_num)
        if (arr[index] < target_num)
            left = index + 1
        else
            right = index - 1
        end

        index = (right + left) / 2
    end

    return arr[index] == target_num ? index + 1 : -1
end

puts main(15, 47, [11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67])
puts main(10, 80, [10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
# 二分探索のアルゴリズムを実装する際にはleft, rightに関していつ評価されるかによって< , <= かが決まる
# 二分探索の計算量はO(logn)

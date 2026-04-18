def main(arr_length, target_num, arr, num_blocks)
    per_block = (arr_length.to_f / num_blocks).ceil

    # ここで含まれるブロックを取得する
    j = 0
    while (j < num_blocks - 1)
        break if target_num <= arr[(j + 1) * per_block - 1]
        j += 1
    end
    
    # ここでブロック内の探索をする
    i = j * per_block
    t = [(j + 1) * per_block - 1, arr_length - 1].min

    (i..t).each do |tmp|
        return tmp if target_num == arr[tmp]
    end
end

puts main(18, 20, [3,4,6,7,8,11,14,15,17,18,20,23,24,26,27,29,30,32], 5)

# ceilメソッドで繰り上げを実現できる
# m-block法では最後のブロックとは比較しない
# m-block法の肝は各ブロックのインデックスをループさせて含まれるブロックのインデックスを取得すること
# それに加えて、ブロックの末尾のインデックスは最後のブロックでは余る可能性を考慮してminで最小の方を取ること

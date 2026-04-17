def main(arr_length, target_num, arr, num_blocks)
    per_block = (arr_length / num_blocks).ceil
    index = per_block - 1
    
    start_index = 0
    end_index = 0

    while index <= (arr_length)
        # 含まれるブロックの開始インデックスと終了インデックスを取得する
        if target_num <= arr[index]
            start_index = index - per_block + 1
            end_index   = index
            break
        end
        
        # per_blockを足したときに最大数を超える場合には、最後のブロックの余っている分だけ足す
        if (index + per_block) <= arr_length
            index += per_block
        else
            index += (arr_length % per_block)
        end
    end
    
    (start_index..end_index).each do |tmp|
        return tmp if arr[tmp] == target_num
    end
end

puts main(18, 3, [3,4,6,7,8,11,14,15,17,18,20,23,23,26,27,29,30,32], 4)

# ceilメソッドで繰り上げを実現できる

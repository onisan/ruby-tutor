def nearest_larger(arr, idx)
    found = -1
    arr.each_with_index {|k, j|
        found = j if k > arr[idx]
        break if found != -1
    }
    if found == -1 then return nil end
    found
end

class Array
    def my_uniq
        uniq_arr = []
        self.each do |el|
            uniq_arr << el unless uniq_arr.include?(el)
        end
        uniq_arr
    end

    def two_sum
        pairs = []
        self.each_with_index do |el1, idx1|
            self.each_with_index do |el2, idx2|
                pairs << [idx1, idx2] if el1 + el2 == 0 && idx2 > idx1
            end
        end
        pairs
    end
end

def my_transpose(arr)
    transposed = []
    arr.each_with_index do |rows, row_idx|
        rows_arr = []
        rows.each_with_index do |tile, col_idx|
            # arr[row_idx][col_idx] = arr[col_idx][row_idx]
            rows_arr << arr[col_idx][row_idx]
        end
        transposed << rows_arr
    end
    transposed
end

def stock_picker(arr)
    profits = Hash.new { |h, k| h[k] = [] }
    arr.each_with_index do |el1, idx1|
        arr.each_with_index do |el2, idx2|
            profits[[idx1, idx2]] = el2 - el1 if idx2 > idx1
        end
    end
    profits.key(profits.values.max)
            
end


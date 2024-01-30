    def merge_sort(target)

        return target if target.length <= 1

        mid = target.length/2

        left_half = target[0...mid]
        right_half = target[mid..-1]

        left_half_sorted = merge_sort(left_half)
        right_half_sorted = merge_sort(right_half)

        merge(left_half_sorted, right_half_sorted)

    end

   def merge(left, right)
            merged_arr = []

            l_pointer = 0
            r_pointer = 0
            m_pointer = 0

            while l_pointer < left.length && r_pointer < right.length
                if left[l_pointer] < right[r_pointer]
                   merged_arr << left[l_pointer]
                   l_pointer += 1
                else
                   merged_arr << right[r_pointer]
                    r_pointer += 1
                end
            end

               merged_arr.concat(left[l_pointer..-1]) if l_pointer < left.length
               merged_arr.concat(right[r_pointer..-1]) if r_pointer < right.length

                merged_arr
        end

    arr = [105, 79, 100, 110]
    p merge_sort(arr)


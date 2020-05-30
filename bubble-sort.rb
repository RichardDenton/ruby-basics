def bubble_sort(list)
  sort_list = list
  sorted = false

  until sorted do
    swap_count = 0
    sort_list.each_with_index do |item, index|
      if index < sort_list.length - 1 && item > sort_list[index + 1]
        sort_list[index], sort_list[index + 1] = sort_list[index + 1], sort_list[index]
        swap_count += 1
      end
    end
    sorted = true if swap_count == 1
  end
  sort_list
end

p bubble_sort([4,3,78,2,0,2])
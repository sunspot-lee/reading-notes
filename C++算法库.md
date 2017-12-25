“堆”是保存在顺序列表中的二叉树，有两个特性：

* 第一个项总是最大项
* 可以在对数时间内增删

for_each,  (list, func) -> func,  对每一项执行func

## Nonmodifying

| name                    | type                                 | describe                      |
| ----------------------- | ------------------------------------ | ----------------------------- |
| count                   | (list, value) -> num                 | 等于value的项的个数                  |
| count_if                | (list, pred) -> num                  |                               |
| min_element             | (list, [comp]) -> it                 | 最小的项                          |
| max_element             | (list, [comp]) -> it                 | 最大的项                          |
| minmax_element          | (list, [comp]) -> (it1, it2)         | 最小和最大的项                       |
| find                    | (list, value) -> it                  | 第一个等于value的项                  |
| find_if                 | (list, pred) -> it                   |                               |
| find_if_not             | (list, pred) -> it                   |                               |
| search_n                | (list, count, value, [comp]) -> it   | 第一个连续count个value              |
| search                  | (list, sublist, [comp]) -> it        | 第一个sublist                    |
| find_end                | (list, sublist, [comp]) -> it        | 最后一个sublist                   |
| find_first_of           | (list, sublist, [comp]) -> it        | 第一个sublist中的项                 |
| adjacent_find           | (list, [comp]) -> it                 | 第一对相等的相邻项                     |
| equal                   | (list1, list2, [comp]) -> bool       | list1是否等于list2                |
| is_permutation          | (list1, list2, [comp]) -> bool       | list1是不是list2中元素的排列           |
| mismatch                | (list1, list2, [comp]) -> (it1, it2) | list1和list2中第一对不相等的项          |
| lexicographical_compare | (list1, list2, [comp]) -> bool       | 在“词典顺序”上，list1是否小于list2       |
| is_sorted               | (list, [comp]) -> bool               | 是否有序                          |
| is_sorted_until         | (list, [comp]) -> it                 | 第一个破坏顺序的项                     |
| is_partitioned          | (list, pred) -> bool                 | 是否“分割”，或是否按pred分为true和false两段 |
| partition_point         | (list, pred) -> it                   | 第一个破坏“分割”的项                   |
| is_heap                 | (list, [comp]) -> bool               | 是否“成堆”                        |
| is_heap_until           | (list, [comp]) -> it                 | 第一个破坏“成堆”的项                   |
| all_of                  | (list, pred) -> bool                 |                               |
| any_of                  | (list, pred) -> bool                 |                               |
| none_of                 | (list, pred) -> bool                 |                               |

## Modifying

| name            | type                                  | describe                         |
| --------------- | ------------------------------------- | -------------------------------- |
| copy            | (list, oit) -> it                     | 复制                               |
| copy_if         | (list, oit, pred) -> it               |                                  |
| copy_n          | (list, num, oit) -> it                |                                  |
| copy_backward   | (list, oit) -> it                     |                                  |
| move            | (list, oit) -> it                     | 移动                               |
| move_backward   | (list, oit) -> it                     |                                  |
| transform       | (list, oit, func) -> it               | 对每一项调用func并把结果存入oit              |
|                 | (list1, list2, oit, func) -> it       | 对list1和list2中的每一对调用func并把结果存入oit |
| merge           | (list1, list2, oit, [comp]) -> it     | 有序合并list1和list2                  |
| swap_range      | (list1, list2) -> it                  | 交换                               |
| fill            | (list, value) -> ()                   | 赋值                               |
| fill_n          | (oit, num, value) -> ()               |                                  |
| generate        | (list, func) -> ()                    |                                  |
| generate_n      | (oit, num, func) -> ()                |                                  |
| iota            | (list, value) -> ()                   | 赋值为(value、value+1、value+2、……)    |
| replace         | (list, oldvalue, newvalue) -> ()      | 就地替换                             |
| replace_if      | (list, pred, newvalue) -> ()          |                                  |
| replace_copy    | (list, oit, oldvalue, newvalue) -> it | 复制并替换                            |
| replace_copy_if | (list, oit, pred, newvalue) -> it     |                                  |

## Removing

| name           | type                      | describe      |
| -------------- | ------------------------- | ------------- |
| remove         | (list, value) -> it       | 就地删除          |
| remove_if      | (list, pred) -> it        |               |
| remove_copy    | (list, oit, value) -> it  | 复制并删除         |
| remove_copy_if | (list, oit, pred) -> it   |               |
| unique         | (list, [comp]) -> it      | 删除与前一项相等的项    |
| unique_copy    | (list, oit, [comp]) -> it | 复制并删除与前一项相等的项 |

## Mutating

| name             | type                                   | describe                 |
| ---------------- | -------------------------------------- | ------------------------ |
| reverse          | list -> ()                             | 就地逆序                     |
| reverse_copy     | (list, oit) -> it                      | 复制并逆序                    |
| rotate           | (list, it) -> it                       | 就地循环移位                   |
| rotate_copy      | (list, it, oit) -> it                  | 复制并循环移位                  |
| next_permutation | (list, [comp]) -> bool                 | 重排为更“大”的列                |
| prev_permutation | (list, [comp]) -> bool                 | 重排为更“小”的列                |
| shuffle          | (list, eng) -> ()                      | 随机重排，使用随机数发生器eng         |
| random_shuffle   | (list, [rand]) -> ()                   | 随机重排                     |
| partition        | (list, pred) -> it                     | 就地分割，按pred分为true和false两段 |
| stable_partition | (list, pred) -> it                     | 就地分割并保持顺序                |
| partition_copy   | (list, oit1, oit2, pred) -> (it1, it2) | 复制并分割                    |

## Sorting

| name              | type                                   | describe                               |
| ----------------- | -------------------------------------- | -------------------------------------- |
| sort              | (list, [comp]) -> ()                   | 排序                                     |
| stable_sort       | (list, [comp]) -> ()                   | 排序并保持相等项的顺序                            |
| partial_sort      | (list, it, [comp]) -> ()               | 就地部分排序，使[begin, it)内有序                 |
| partial_sort_copy | (list1, list2, [comp]) -> it           | 复制并部分排序                                |
| nth_element       | (list, it, [comp]) -> ()               | 就地部分排序，使[begin, it)内的项小于或等于[it,end)内的项 |
| partition         | (list, pred) -> it                     | 就地分割，按pred分为true和false两段               |
| stable_partition  | (list, pred) -> it                     | 就地分割并保持顺序                              |
| partition_copy    | (list, oit1, oit2, pred) -> (it1, it2) | 复制并分割                                  |
| make_heap         | (list, [comp]) -> ()                   | 使list“成堆”                              |
| push_heap         | (list, [comp]) -> ()                   | [begin,end-1)是一个“堆”，把end-1项压入堆中        |
| pop_heap          | (list, [comp]) -> ()                   | 把"堆"中的第一项弹出到end-1位置                    |
| sort_heap         | (list, [comp]) -> ()                   | "堆"排序                                  |

## Sorted-Range

| name                     | type                                | describe                  |
| ------------------------ | ----------------------------------- | ------------------------- |
| binary_search            | (list, value, [comp]) -> bool       | 是否包含value                 |
| includes                 | (list1, list2, [comp]) -> bool      | list1是否包含list2中的每一项       |
| lower_bound              | (list, value, [comp]) -> it         | 第一个大于或等于value的项           |
| upper_bound              | (list, value, [comp]) -> it         | 第一个大于value的项              |
| equal_range              | (list, value, [comp]) -> (it1, it2) | 等于value的范围[it1,it2)       |
| merge                    | (list1, list2, oit, [comp]) -> it   | list1和list2的有序合并          |
| set_union                | (list1, list2, oit, [comp]) -> it   | list1和list2的有序并集          |
| set_intersection         | (list1, list2, oit, [comp]) -> it   | list1和list2的有序交集          |
| set_difference           | (list1, list2, oit, [comp]) -> it   | list1和list2的有序差集          |
| set_symmetric_difference | (list1, list2, oit, [comp]) -> it   | list1和list2的有序“异或”集       |
| inplace_merge            | (it1, it2, it3, [comp]) -> ()       | 就地有序合并[it1,it2)和[it2,it3) |
| partition_point          | (list, pred) -> it                  | 第一个破坏“分割”的项               |

## Numeric

| name                | type                                  | describe                                 |
| ------------------- | ------------------------------------- | ---------------------------------------- |
| accumulate          | (list, init, [func]) -> value         | 累加                                       |
| inner_product       | (list1, list2, init, [func]) -> value | 内积                                       |
| adjacent_difference | (list, oit, [func]) -> it             | 返回(list[0]、list[1]-list[0]、list[2]-list[1]、……) |
| partial_sum         | (list, oit, [func]) -> it             | 返回(list[0]、list[0]+list[1]、list[0]+list[1]+list[2]、……) |
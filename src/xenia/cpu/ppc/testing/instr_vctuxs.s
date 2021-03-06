# 0 * 2^31
test_vctuxs_1:
  #_ REGISTER_IN v0 [00000000, 00000000, 00000000, 00000000]
  vctuxs v3, v0, 31
  blr
  #_ REGISTER_OUT v0 [00000000, 00000000, 00000000, 00000000]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

# -0 ^ 2^31
test_vctuxs_2:
  #_ REGISTER_IN v0 [80000000, 80000000, 80000000, 80000000]
  vctuxs v3, v0, 31
  blr
  #_ REGISTER_OUT v0 [80000000, 80000000, 80000000, 80000000]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

# smallest positive subnormal * 2^31
test_vctuxs_3:
  #_ REGISTER_IN v0 [00000001, 00000001, 00000001, 00000001]
  vctuxs v3, v0, 31
  blr
  #_ REGISTER_OUT v0 [00000001, 00000001, 00000001, 00000001]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

# largest subnormal * 2^31
test_vctuxs_4:
  #_ REGISTER_IN v0 [007FFFFF, 007FFFFF, 007FFFFF, 007FFFFF]
  vctuxs v3, v0, 31
  blr
  #_ REGISTER_OUT v0 [007FFFFF, 007FFFFF, 007FFFFF, 007FFFFF]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

# +1 * 2^0
test_vctuxs_5:
  #_ REGISTER_IN v0 [3F800000, 3F800000, 3F800000, 3F800000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [3F800000, 3F800000, 3F800000, 3F800000]
  #_ REGISTER_OUT v3 [00000001, 00000001, 00000001, 00000001]

# -1 * 2^0
test_vctuxs_6:
  #_ REGISTER_IN v0 [BF800000, BF800000, BF800000, BF800000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [BF800000, BF800000, BF800000, BF800000]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

# 2^31 * 2^0
test_vctuxs_7:
  #_ REGISTER_IN v0 [4F000000, 4F000000, 4F000000, 4F000000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [4F000000, 4F000000, 4F000000, 4F000000]
  #_ REGISTER_OUT v3 [80000000, 80000000, 80000000, 80000000]

# 2^31 * 1.5 * 2^0
test_vctuxs_8:
  #_ REGISTER_IN v0 [4F400000, 4F400000, 4F400000, 4F400000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [4F400000, 4F400000, 4F400000, 4F400000]
  #_ REGISTER_OUT v3 [C0000000, C0000000, C0000000, C0000000]

# 2^32 * 2^0
test_vctuxs_9:
  #_ REGISTER_IN v0 [4F800000, 4F800000, 4F800000, 4F800000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [4F800000, 4F800000, 4F800000, 4F800000]
  #_ REGISTER_OUT v3 [FFFFFFFF, FFFFFFFF, FFFFFFFF, FFFFFFFF]

# +infinity * 2^0
test_vctuxs_10:
  #_ REGISTER_IN v0 [7F800000, 7F800000, 7F800000, 7F800000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [7F800000, 7F800000, 7F800000, 7F800000]
  #_ REGISTER_OUT v3 [FFFFFFFF, FFFFFFFF, FFFFFFFF, FFFFFFFF]

# -infinity * 2^0
test_vctuxs_11:
  #_ REGISTER_IN v0 [FF800000, FF800000, FF800000, FF800000]
  vctuxs v3, v0, 0
  blr
  #_ REGISTER_OUT v0 [FF800000, FF800000, FF800000, FF800000]
  #_ REGISTER_OUT v3 [00000000, 00000000, 00000000, 00000000]

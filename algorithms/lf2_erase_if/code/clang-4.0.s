counting(std::vector<int, std::allocator<int> >&):          # @counting(std::vector<int, std::allocator<int> >&)
        push    r15
        push    r14
        push    rbx
        mov     r14, rdi
        mov     rdi, qword ptr [r14]
        mov     rbx, qword ptr [r14 + 8]
        mov     rsi, rbx
        call    __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > std::remove_if<__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0>(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0)
        mov     r15, rax
        cmp     r15, rbx
        je      .LBB0_5
        mov     rax, qword ptr [r14 + 8]
        mov     rdx, rax
        sub     rdx, rbx
        je      .LBB0_4
        je      .LBB0_4
        mov     rdi, r15
        mov     rsi, rbx
        call    memmove
        mov     rax, qword ptr [r14 + 8]
.LBB0_4:
        sub     rax, rbx
        add     r15, rax
        mov     qword ptr [r14 + 8], r15
.LBB0_5:
        pop     rbx
        pop     r14
        pop     r15
        ret

counting(std::deque<int, std::allocator<int> >&):           # @counting(std::deque<int, std::allocator<int> >&)
        push    rbx
        sub     rsp, 224
        mov     rbx, rdi
        movups  xmm1, xmmword ptr [rbx + 48]
        movaps  xmmword ptr [rsp + 80], xmm1 # 16-byte Spill
        movups  xmm2, xmmword ptr [rbx + 64]
        movaps  xmmword ptr [rsp + 64], xmm2 # 16-byte Spill
        movups  xmm0, xmmword ptr [rbx + 16]
        movaps  xmmword ptr [rsp + 128], xmm0
        movups  xmm0, xmmword ptr [rbx + 32]
        movaps  xmmword ptr [rsp + 144], xmm0
        movaps  xmmword ptr [rsp + 96], xmm1
        movaps  xmmword ptr [rsp + 112], xmm2
        lea     rdi, [rsp + 160]
        lea     rsi, [rsp + 128]
        lea     rdx, [rsp + 96]
        call    std::_Deque_iterator<int, int&, int*> std::remove_if<std::_Deque_iterator<int, int&, int*>, $_0>(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>, $_0)
        mov     rax, qword ptr [rsp + 160]
        mov     rcx, qword ptr [rsp + 184]
        mov     qword ptr [rsp + 32], rax
        mov     rax, qword ptr [rcx]
        mov     qword ptr [rsp + 40], rax
        add     rax, 512
        mov     qword ptr [rsp + 48], rax
        mov     qword ptr [rsp + 56], rcx
        pshufd  xmm0, xmmword ptr [rsp + 64], 78 # 16-byte Folded Reload
        movq    rax, xmm0
        movaps  xmm1, xmmword ptr [rsp + 80] # 16-byte Reload
        movlps  qword ptr [rsp], xmm1
        mov     rax, qword ptr [rax]
        mov     qword ptr [rsp + 8], rax
        add     rax, 512
        mov     qword ptr [rsp + 16], rax
        movq    qword ptr [rsp + 24], xmm0
        lea     rdi, [rsp + 192]
        lea     rdx, [rsp + 32]
        mov     rcx, rsp
        mov     rsi, rbx
        call    std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>)
        add     rsp, 224
        pop     rbx
        ret

counting(std::__cxx11::list<int, std::allocator<int> >&):  # @counting(std::__cxx11::list<int, std::allocator<int> >&)
        push    r15
        push    r14
        push    rbx
        mov     r14, rdi
        mov     r15, qword ptr [r14]
        jmp     .LBB2_1
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
        dec     qword ptr [r14 + 16]
        mov     rdi, rbx
        call    std::__detail::_List_node_base::_M_unhook()
        mov     rdi, rbx
        call    operator delete(void*)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
        mov     rbx, r15
        cmp     rbx, r14
        je      .LBB2_4
        mov     edi, dword ptr [rbx + 16]
        call    do_check(int)
        mov     r15, qword ptr [rbx]
        test    al, al
        je      .LBB2_1
        jmp     .LBB2_3
.LBB2_4:
        pop     rbx
        pop     r14
        pop     r15
        ret

counting(std::set<int, std::less<int>, std::allocator<int> >&):   # @counting(std::set<int, std::less<int>, std::allocator<int> >&)
        push    rbp
        push    r15
        push    r14
        push    r12
        push    rbx
        mov     r14, rdi
        lea     r15, [r14 + 8]
        mov     r12, qword ptr [r14 + 24]
        jmp     .LBB3_1
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
        mov     rdi, rbx
        mov     rsi, r15
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rdi, rax
        call    operator delete(void*)
        dec     qword ptr [r14 + 40]
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
        mov     rbx, r12
        cmp     rbx, r15
        je      .LBB3_4
        mov     edi, dword ptr [rbx + 32]
        call    do_check(int)
        mov     ebp, eax
        mov     rdi, rbx
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     r12, rax
        test    bpl, bpl
        je      .LBB3_1
        jmp     .LBB3_3
.LBB3_4:
        pop     rbx
        pop     r12
        pop     r14
        pop     r15
        pop     rbp
        ret

counting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&): # @counting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     rbx, qword ptr [r14 + 16]
        test    rbx, rbx
        jne     .LBB4_2
        jmp     .LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
        mov     rbx, qword ptr [rbx]
        test    rbx, rbx
        je      .LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 8]
        call    do_check(int)
        test    al, al
        je      .LBB4_4
        mov     rdi, r14
        mov     rsi, rbx
        call    std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .LBB4_2
.LBB4_5:
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

counting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&): # @counting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&)
        push    rbp
        push    r15
        push    r14
        push    r12
        push    rbx
        mov     r14, rdi
        lea     r15, [r14 + 8]
        mov     r12, qword ptr [r14 + 24]
        jmp     .LBB5_1
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
        mov     rdi, rbx
        mov     rsi, r15
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rdi, rax
        call    operator delete(void*)
        dec     qword ptr [r14 + 40]
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
        mov     rbx, r12
        cmp     rbx, r15
        je      .LBB5_4
        mov     edi, dword ptr [rbx + 32]
        mov     rsi, qword ptr [rbx + 40]
        call    do_check(std::pair<int, long>)
        mov     ebp, eax
        mov     rdi, rbx
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     r12, rax
        test    bpl, bpl
        je      .LBB5_1
        jmp     .LBB5_3
.LBB5_4:
        pop     rbx
        pop     r12
        pop     r14
        pop     r15
        pop     rbp
        ret

counting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&): # @counting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     rbx, qword ptr [r14 + 16]
        test    rbx, rbx
        jne     .LBB6_2
        jmp     .LBB6_5
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
        mov     rbx, qword ptr [rbx]
        test    rbx, rbx
        je      .LBB6_5
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 8]
        mov     rsi, qword ptr [rbx + 16]
        call    do_check(std::pair<int, long>)
        test    al, al
        je      .LBB6_4
        mov     rdi, r14
        mov     rsi, rbx
        call    std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .LBB6_2
.LBB6_5:
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

noncounting(std::vector<int, std::allocator<int> >&):      # @noncounting(std::vector<int, std::allocator<int> >&)
        push    r15
        push    r14
        push    rbx
        mov     r14, rdi
        mov     rdi, qword ptr [r14]
        mov     rbx, qword ptr [r14 + 8]
        mov     rsi, rbx
        call    __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > std::remove_if<__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0>(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0)
        mov     r15, rax
        cmp     r15, rbx
        je      .LBB7_5
        mov     rax, qword ptr [r14 + 8]
        mov     rdx, rax
        sub     rdx, rbx
        je      .LBB7_4
        je      .LBB7_4
        mov     rdi, r15
        mov     rsi, rbx
        call    memmove
        mov     rax, qword ptr [r14 + 8]
.LBB7_4:
        sub     rax, rbx
        add     r15, rax
        mov     qword ptr [r14 + 8], r15
.LBB7_5:
        pop     rbx
        pop     r14
        pop     r15
        ret

noncounting(std::deque<int, std::allocator<int> >&):       # @noncounting(std::deque<int, std::allocator<int> >&)
        push    rbx
        sub     rsp, 224
        mov     rbx, rdi
        movups  xmm1, xmmword ptr [rbx + 48]
        movaps  xmmword ptr [rsp + 80], xmm1 # 16-byte Spill
        movups  xmm2, xmmword ptr [rbx + 64]
        movaps  xmmword ptr [rsp + 64], xmm2 # 16-byte Spill
        movups  xmm0, xmmword ptr [rbx + 16]
        movaps  xmmword ptr [rsp + 128], xmm0
        movups  xmm0, xmmword ptr [rbx + 32]
        movaps  xmmword ptr [rsp + 144], xmm0
        movaps  xmmword ptr [rsp + 96], xmm1
        movaps  xmmword ptr [rsp + 112], xmm2
        lea     rdi, [rsp + 160]
        lea     rsi, [rsp + 128]
        lea     rdx, [rsp + 96]
        call    std::_Deque_iterator<int, int&, int*> std::remove_if<std::_Deque_iterator<int, int&, int*>, $_0>(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>, $_0)
        mov     rax, qword ptr [rsp + 160]
        mov     rcx, qword ptr [rsp + 184]
        mov     qword ptr [rsp + 32], rax
        mov     rax, qword ptr [rcx]
        mov     qword ptr [rsp + 40], rax
        add     rax, 512
        mov     qword ptr [rsp + 48], rax
        mov     qword ptr [rsp + 56], rcx
        pshufd  xmm0, xmmword ptr [rsp + 64], 78 # 16-byte Folded Reload
        movq    rax, xmm0
        movaps  xmm1, xmmword ptr [rsp + 80] # 16-byte Reload
        movlps  qword ptr [rsp], xmm1
        mov     rax, qword ptr [rax]
        mov     qword ptr [rsp + 8], rax
        add     rax, 512
        mov     qword ptr [rsp + 16], rax
        movq    qword ptr [rsp + 24], xmm0
        lea     rdi, [rsp + 192]
        lea     rdx, [rsp + 32]
        mov     rcx, rsp
        mov     rsi, rbx
        call    std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>)
        add     rsp, 224
        pop     rbx
        ret

noncounting(std::__cxx11::list<int, std::allocator<int> >&): # @noncounting(std::__cxx11::list<int, std::allocator<int> >&)
        push    r15
        push    r14
        push    rbx
        mov     r14, rdi
        mov     rbx, qword ptr [r14]
        cmp     rbx, r14
        je      .LBB9_4
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 16]
        call    do_check(int)
        mov     r15, qword ptr [rbx]
        test    al, al
        je      .LBB9_3
        dec     qword ptr [r14 + 16]
        mov     rdi, rbx
        call    std::__detail::_List_node_base::_M_unhook()
        mov     rdi, rbx
        call    operator delete(void*)
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
        cmp     r15, r14
        mov     rbx, r15
        jne     .LBB9_1
.LBB9_4:
        pop     rbx
        pop     r14
        pop     r15
        ret

noncounting(std::set<int, std::less<int>, std::allocator<int> >&): # @noncounting(std::set<int, std::less<int>, std::allocator<int> >&)
        push    rbp
        push    r15
        push    r14
        push    r12
        push    rbx
        mov     r14, rdi
        lea     r15, [r14 + 8]
        mov     rbx, qword ptr [r14 + 24]
        cmp     rbx, r15
        je      .LBB10_4
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 32]
        call    do_check(int)
        mov     ebp, eax
        mov     rdi, rbx
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     r12, rax
        test    bpl, bpl
        je      .LBB10_3
        mov     rdi, rbx
        mov     rsi, r15
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rdi, rax
        call    operator delete(void*)
        dec     qword ptr [r14 + 40]
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
        cmp     r12, r15
        mov     rbx, r12
        jne     .LBB10_1
.LBB10_4:
        pop     rbx
        pop     r12
        pop     r14
        pop     r15
        pop     rbp
        ret

noncounting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&): # @noncounting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     rbx, qword ptr [r14 + 16]
        test    rbx, rbx
        jne     .LBB11_2
        jmp     .LBB11_5
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
        mov     rbx, qword ptr [rbx]
        test    rbx, rbx
        je      .LBB11_5
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 8]
        call    do_check(int)
        test    al, al
        je      .LBB11_4
        mov     rdi, r14
        mov     rsi, rbx
        call    std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .LBB11_2
.LBB11_5:
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

noncounting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&): # @noncounting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&)
        push    rbp
        push    r15
        push    r14
        push    r12
        push    rbx
        mov     r14, rdi
        lea     r15, [r14 + 8]
        mov     rbx, qword ptr [r14 + 24]
        cmp     rbx, r15
        je      .LBB12_4
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 32]
        mov     rsi, qword ptr [rbx + 40]
        call    do_check(std::pair<int, long>)
        mov     ebp, eax
        mov     rdi, rbx
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     r12, rax
        test    bpl, bpl
        je      .LBB12_3
        mov     rdi, rbx
        mov     rsi, r15
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rdi, rax
        call    operator delete(void*)
        dec     qword ptr [r14 + 40]
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
        cmp     r12, r15
        mov     rbx, r12
        jne     .LBB12_1
.LBB12_4:
        pop     rbx
        pop     r12
        pop     r14
        pop     r15
        pop     rbp
        ret

noncounting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&): # @noncounting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     rbx, qword ptr [r14 + 16]
        test    rbx, rbx
        jne     .LBB13_2
        jmp     .LBB13_5
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
        mov     rbx, qword ptr [rbx]
        test    rbx, rbx
        je      .LBB13_5
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx + 8]
        mov     rsi, qword ptr [rbx + 16]
        call    do_check(std::pair<int, long>)
        test    al, al
        je      .LBB13_4
        mov     rdi, r14
        mov     rsi, rbx
        call    std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .LBB13_2
.LBB13_5:
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > std::remove_if<__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0>(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0): # @"__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > std::remove_if<__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0>(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, $_0)"
        push    r15
        push    r14
        push    rbx
        mov     r14, rsi
        mov     rbx, rdi
        mov     r15, r14
        sub     r15, rbx
        sar     r15, 4
        test    r15, r15
        jle     .LBB14_10
        inc     r15
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        test    al, al
        jne     .LBB14_18
        mov     edi, dword ptr [rbx + 4]
        call    do_check(int)
        test    al, al
        jne     .LBB14_4
        mov     edi, dword ptr [rbx + 8]
        call    do_check(int)
        test    al, al
        jne     .LBB14_6
        mov     edi, dword ptr [rbx + 12]
        call    do_check(int)
        test    al, al
        jne     .LBB14_8
        add     rbx, 16
        dec     r15
        cmp     r15, 1
        jg      .LBB14_2
.LBB14_10:
        mov     rax, r14
        sub     rax, rbx
        sar     rax, 2
        cmp     rax, 1
        je      .LBB14_17
        cmp     rax, 2
        je      .LBB14_15
        cmp     rax, 3
        jne     .LBB14_23
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        test    al, al
        jne     .LBB14_18
        add     rbx, 4
.LBB14_15:
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        test    al, al
        jne     .LBB14_18
        add     rbx, 4
.LBB14_17:
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        test    al, al
        cmove   rbx, r14
        cmp     rbx, r14
        jne     .LBB14_19
        jmp     .LBB14_23
.LBB14_4:
        add     rbx, 4
        cmp     rbx, r14
        jne     .LBB14_19
        jmp     .LBB14_23
.LBB14_6:
        add     rbx, 8
        cmp     rbx, r14
        jne     .LBB14_19
        jmp     .LBB14_23
.LBB14_8:
        add     rbx, 12
.LBB14_18:
        cmp     rbx, r14
        je      .LBB14_23
.LBB14_19:
        mov     r15, rbx
        jmp     .LBB14_20
.LBB14_25:                              #   in Loop: Header=BB14_20 Depth=1
        mov     eax, dword ptr [rbx - 4]
        add     rbx, -4
        mov     dword ptr [r15], eax
        add     r15, 4
.LBB14_20:                              # =>This Loop Header: Depth=1
        add     rbx, 4
.LBB14_21:                              #   Parent Loop BB14_20 Depth=1
        cmp     r14, rbx
        je      .LBB14_22
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        add     rbx, 4
        test    al, al
        jne     .LBB14_21
        jmp     .LBB14_25
.LBB14_22:
        mov     r14, r15
.LBB14_23:
        mov     rax, r14
        pop     rbx
        pop     r14
        pop     r15
        ret

std::_Deque_iterator<int, int&, int*> std::remove_if<std::_Deque_iterator<int, int&, int*>, $_0>(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>, $_0): # @"std::_Deque_iterator<int, int&, int*> std::remove_if<std::_Deque_iterator<int, int&, int*>, $_0>(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>, $_0)"
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 72
        mov     qword ptr [rsp + 24], rdi # 8-byte Spill
        mov     rbp, qword ptr [rsi]
        mov     r12, qword ptr [rsi + 8]
        mov     r15, qword ptr [rsi + 16]
        mov     rbx, qword ptr [rsi + 24]
        mov     rcx, qword ptr [rdx]
        mov     rsi, qword ptr [rdx + 8]
        mov     rax, qword ptr [rdx + 16]
        mov     qword ptr [rsp + 16], rax # 8-byte Spill
        mov     rax, qword ptr [rdx + 24]
        mov     qword ptr [rsp + 8], rbp
        mov     qword ptr [rsp + 40], r12
        mov     qword ptr [rsp + 56], rax # 8-byte Spill
        sub     rax, rbx
        shl     rax, 4
        mov     qword ptr [rsp + 48], rcx # 8-byte Spill
        mov     rdx, rcx
        mov     qword ptr [rsp + 32], rsi # 8-byte Spill
        sub     rdx, rsi
        sar     rdx, 2
        mov     rcx, r15
        sub     rcx, rbp
        sar     rcx, 2
        lea     r13, [rdx + rcx - 128]
        add     r13, rax
        sar     r13, 2
        test    r13, r13
        jle     .LBB15_16
        mov     qword ptr [rsp + 64], rdx # 8-byte Spill
        inc     r13
        mov     r14, rbx
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_5
        lea     rbx, [r14 + 8]
        mov     r12, qword ptr [r14 + 8]
        mov     qword ptr [rsp + 40], r12
        mov     qword ptr [rsp + 8], r12
        mov     rbp, r12
        lea     r15, [r12 + 512]
        mov     r14, rbx
.LBB15_5:                               #   in Loop: Header=BB15_2 Depth=1
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_8
        lea     r14, [rbx + 8]
        mov     r12, qword ptr [rbx + 8]
        mov     qword ptr [rsp + 40], r12
        mov     qword ptr [rsp + 8], r12
        mov     rbx, r14
        mov     rbp, r12
        lea     r15, [r12 + 512]
.LBB15_8:                               #   in Loop: Header=BB15_2 Depth=1
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_11
        lea     r14, [rbx + 8]
        mov     r12, qword ptr [rbx + 8]
        mov     qword ptr [rsp + 40], r12
        mov     qword ptr [rsp + 8], r12
        mov     rbx, r14
        mov     rbp, r12
        lea     r15, [r12 + 512]
.LBB15_11:                              #   in Loop: Header=BB15_2 Depth=1
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_14
        lea     r14, [rbx + 8]
        mov     r12, qword ptr [rbx + 8]
        mov     qword ptr [rsp + 40], r12
        lea     r15, [r12 + 512]
        mov     qword ptr [rsp + 8], r12
        mov     rbx, r14
        mov     rbp, r12
.LBB15_14:                              #   in Loop: Header=BB15_2 Depth=1
        dec     r13
        cmp     r13, 1
        jg      .LBB15_2
        mov     rdx, qword ptr [rsp + 64] # 8-byte Reload
.LBB15_16:
        add     rdx, -128
        mov     r13, qword ptr [rsp + 56] # 8-byte Reload
        mov     rcx, r13
        sub     rcx, rbx
        shl     rcx, 4
        mov     rax, r15
        sub     rax, rbp
        sar     rax, 2
        add     rax, rdx
        add     rax, rcx
        cmp     rax, 1
        je      .LBB15_20
        cmp     rax, 3
        je      .LBB15_21
        cmp     rax, 2
        jne     .LBB15_32
        lea     r13, [rsp + 8]
        lea     r14, [rsp + 40]
        jmp     .LBB15_24
.LBB15_20:
        lea     r13, [rsp + 8]
        lea     r14, [rsp + 40]
        jmp     .LBB15_27
.LBB15_21:
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        lea     r14, [rsp + 40]
        lea     r13, [rsp + 8]
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_24
        mov     rbp, qword ptr [rbx + 8]
        lea     rbx, [rbx + 8]
        mov     qword ptr [rsp + 40], rbp
        mov     qword ptr [rsp + 8], rbp
        mov     r12, rbp
        lea     r15, [rbp + 512]
.LBB15_24:
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        jne     .LBB15_28
        mov     rbp, qword ptr [rsp + 8]
        add     rbp, 4
        mov     qword ptr [rsp + 8], rbp
        cmp     rbp, r15
        jne     .LBB15_27
        mov     r12, qword ptr [rbx + 8]
        add     rbx, 8
        mov     qword ptr [rsp + 40], r12
        mov     qword ptr [rsp + 8], r12
        mov     rbp, r12
        lea     r15, [r12 + 512]
.LBB15_27:
        mov     edi, dword ptr [rbp]
        call    do_check(int)
        test    al, al
        je      .LBB15_33
.LBB15_28:
        mov     r13, rbx
        mov     qword ptr [rsp + 32], r12 # 8-byte Spill
        mov     qword ptr [rsp + 16], r15 # 8-byte Spill
.LBB15_29:
        mov     r12, qword ptr [rsp + 24] # 8-byte Reload
        cmp     rbp, qword ptr [rsp + 48] # 8-byte Folded Reload
        je      .LBB15_43
.LBB15_30:
        lea     rbx, [rbp + 4]
        mov     rax, qword ptr [rsp + 16] # 8-byte Reload
        cmp     rbx, rax
        mov     r15, rax
        mov     r14, r13
        jne     .LBB15_37
        lea     r14, [r13 + 8]
        mov     rbx, qword ptr [r13 + 8]
        jmp     .LBB15_36
.LBB15_32:
        mov     rbp, qword ptr [rsp + 48] # 8-byte Reload
        jmp     .LBB15_29
.LBB15_33:
        mov     rax, qword ptr [r13]
        add     rax, 4
        mov     qword ptr [r13], rax
        cmp     rax, r15
        jne     .LBB15_35
        mov     rax, qword ptr [rbx + 8]
        mov     qword ptr [r14], rax
        mov     qword ptr [rsp + 8], rax
.LBB15_35:
        mov     rbp, qword ptr [rsp + 48] # 8-byte Reload
        mov     r12, qword ptr [rsp + 24] # 8-byte Reload
        mov     r13, qword ptr [rsp + 56] # 8-byte Reload
        cmp     rbp, qword ptr [rsp + 48] # 8-byte Folded Reload
        jne     .LBB15_30
        jmp     .LBB15_43
.LBB15_36:
        lea     r15, [rbx + 512]
.LBB15_37:                              # =>This Inner Loop Header: Depth=1
        cmp     rbx, qword ptr [rsp + 48] # 8-byte Folded Reload
        je      .LBB15_43
        mov     edi, dword ptr [rbx]
        call    do_check(int)
        test    al, al
        jne     .LBB15_41
        mov     eax, dword ptr [rbx]
        mov     dword ptr [rbp], eax
        add     rbp, 4
        cmp     rbp, qword ptr [rsp + 16] # 8-byte Folded Reload
        jne     .LBB15_41
        mov     rbp, qword ptr [r13 + 8]
        add     r13, 8
        mov     qword ptr [rsp + 32], rbp # 8-byte Spill
        lea     rax, [rbp + 512]
        mov     qword ptr [rsp + 16], rax # 8-byte Spill
.LBB15_41:                              #   in Loop: Header=BB15_37 Depth=1
        add     rbx, 4
        cmp     rbx, r15
        jne     .LBB15_37
        mov     rbx, qword ptr [r14 + 8]
        add     r14, 8
        jmp     .LBB15_36
.LBB15_43:
        mov     qword ptr [r12], rbp
        mov     rax, qword ptr [rsp + 32] # 8-byte Reload
        mov     qword ptr [r12 + 8], rax
        mov     rax, qword ptr [rsp + 16] # 8-byte Reload
        mov     qword ptr [r12 + 16], rax
        mov     qword ptr [r12 + 24], r13
        mov     rax, r12
        add     rsp, 72
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret

std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>): # @std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>)
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 264
        mov     r12, qword ptr [rdx]
        mov     r15, qword ptr [rcx]
        cmp     r12, r15
        je      .LBB16_1
        mov     r13, qword ptr [rsi + 16]
        cmp     r12, r13
        mov     qword ptr [rsp + 64], rsi # 8-byte Spill
        mov     qword ptr [rsp + 112], rdi # 8-byte Spill
        je      .LBB16_7
        mov     qword ptr [rsp + 72], r13 # 8-byte Spill
        mov     rax, qword ptr [rsi + 48]
        mov     qword ptr [rsp + 80], rax # 8-byte Spill
        jmp     .LBB16_4
.LBB16_1:
        mov     qword ptr [rdi], r12
        movups  xmm0, xmmword ptr [rdx + 8]
        movups  xmmword ptr [rdi + 8], xmm0
        mov     r12, qword ptr [rdx + 24]
        jmp     .LBB16_61
.LBB16_7:
        mov     rbp, qword ptr [rsi + 48]
        cmp     r15, rbp
        je      .LBB16_9
        mov     qword ptr [rsp + 72], r13 # 8-byte Spill
        mov     qword ptr [rsp + 80], rbp # 8-byte Spill
.LBB16_4:
        mov     r14, qword ptr [rcx + 8]
        mov     qword ptr [rsp + 88], rcx # 8-byte Spill
        mov     r10, qword ptr [rcx + 24]
        mov     r11, qword ptr [rdx + 24]
        mov     rbx, r10
        sub     rbx, r11
        shl     rbx, 4
        mov     rax, r15
        sub     rax, r14
        sar     rax, 2
        add     rax, rbx
        mov     r13, qword ptr [rdx + 8]
        mov     rdx, qword ptr [rdx + 16]
        mov     qword ptr [rsp + 96], rdx # 8-byte Spill
        sub     rdx, r12
        sar     rdx, 2
        lea     r8, [rax + rdx]
        lea     rax, [rdx + rax - 128]
        mov     qword ptr [rsp + 120], rax # 8-byte Spill
        mov     rbp, qword ptr [rsi + 32]
        mov     rax, rsi
        mov     rbx, qword ptr [rax + 40]
        mov     rdx, r11
        sub     rdx, rbx
        shl     rdx, 4
        mov     rsi, r12
        sub     rsi, r13
        sar     rsi, 2
        mov     qword ptr [rsp + 104], rbp # 8-byte Spill
        mov     r9, qword ptr [rsp + 72] # 8-byte Reload
        sub     rbp, r9
        sar     rbp, 2
        add     rdx, rbp
        lea     rsi, [rsi + rdx - 128]
        mov     rcx, qword ptr [rax + 72]
        mov     rdx, rcx
        sub     rdx, rbx
        shl     rdx, 4
        mov     rax, qword ptr [rax + 56]
        sub     rbp, r8
        add     rbp, rdx
        mov     rdx, qword ptr [rsp + 80] # 8-byte Reload
        sub     rdx, rax
        sar     rdx, 2
        add     rbp, rdx
        shr     rbp
        mov     qword ptr [rsp + 128], rsi # 8-byte Spill
        cmp     rsi, rbp
        jbe     .LBB16_5
        mov     r9, r8
        mov     qword ptr [rsp + 72], rax # 8-byte Spill
        mov     rax, qword ptr [rsp + 80] # 8-byte Reload
        cmp     r15, rax
        mov     rbp, rax
        je      .LBB16_24
        mov     qword ptr [rsp + 80], rbp # 8-byte Spill
        mov     rax, qword ptr [rsp + 88] # 8-byte Reload
        mov     r8, qword ptr [rax + 16]
        mov     rbp, rcx
        sub     rcx, r10
        shl     rcx, 4
        mov     rsi, r8
        sub     rsi, r15
        sar     rsi, 2
        add     rcx, rdx
        lea     rdi, [rsi + rcx - 128]
        test    rdi, rdi
        jle     .LBB16_26
        mov     qword ptr [rsp + 104], r9 # 8-byte Spill
        mov     rsi, qword ptr [rsp + 96] # 8-byte Reload
.LBB16_28:                              # =>This Inner Loop Header: Depth=1
        mov     rax, r8
        sub     rax, r15
        sar     rax, 2
        mov     rbx, rsi
        sub     rbx, r12
        sar     rbx, 2
        cmp     rbx, rax
        cmovg   rbx, rax
        cmp     rbx, rdi
        cmovg   rbx, rdi
        test    rbx, rbx
        je      .LBB16_30
        lea     rdx, [4*rbx]
        mov     qword ptr [rsp + 72], rdi # 8-byte Spill
        mov     rdi, r12
        mov     qword ptr [rsp + 96], rsi # 8-byte Spill
        mov     rsi, r15
        mov     qword ptr [rsp + 80], r12 # 8-byte Spill
        mov     r12, r14
        mov     r14, r10
        mov     qword ptr [rsp + 88], r13 # 8-byte Spill
        mov     r13, r15
        mov     r15, r11
        mov     rbp, r8
        call    memmove
        mov     r8, rbp
        mov     rdi, qword ptr [rsp + 72] # 8-byte Reload
        mov     rsi, qword ptr [rsp + 96] # 8-byte Reload
        mov     r11, r15
        mov     r15, r13
        mov     r13, qword ptr [rsp + 88] # 8-byte Reload
        mov     r10, r14
        mov     r14, r12
        mov     r12, qword ptr [rsp + 80] # 8-byte Reload
.LBB16_30:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rax, r15
        sub     rax, r14
        sar     rax, 2
        add     rax, rbx
        js      .LBB16_34
        cmp     rax, 127
        jg      .LBB16_33
        lea     r15, [r15 + 4*rbx]
        jmp     .LBB16_36
.LBB16_34:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rcx, rax
        shr     rcx, 7
        movabs  rdx, -144115188075855872
        or      rcx, rdx
        jmp     .LBB16_35
.LBB16_33:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rcx, rax
        shr     rcx, 7
.LBB16_35:                              #   in Loop: Header=BB16_28 Depth=1
        mov     r14, qword ptr [r10 + 8*rcx]
        lea     rdx, [r10 + 8*rcx]
        shl     rcx, 7
        sub     rax, rcx
        lea     r15, [r14 + 4*rax]
        lea     r8, [r14 + 512]
        mov     r10, rdx
.LBB16_36:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rax, r12
        sub     rax, r13
        sar     rax, 2
        add     rax, rbx
        js      .LBB16_40
        cmp     rax, 127
        jg      .LBB16_39
        lea     r12, [r12 + 4*rbx]
        sub     rdi, rbx
        jg      .LBB16_28
        jmp     .LBB16_43
.LBB16_40:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rcx, rax
        shr     rcx, 7
        movabs  rdx, -144115188075855872
        or      rcx, rdx
        jmp     .LBB16_41
.LBB16_39:                              #   in Loop: Header=BB16_28 Depth=1
        mov     rcx, rax
        shr     rcx, 7
.LBB16_41:                              #   in Loop: Header=BB16_28 Depth=1
        mov     r13, qword ptr [r11 + 8*rcx]
        lea     rdx, [r11 + 8*rcx]
        lea     rsi, [r13 + 512]
        shl     rcx, 7
        sub     rax, rcx
        lea     r12, [r13 + 4*rax]
        mov     r11, rdx
        sub     rdi, rbx
        jg      .LBB16_28
.LBB16_43:
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     rbp, qword ptr [rax + 48]
        mov     r13, qword ptr [rax + 56]
        mov     rbx, qword ptr [rax + 72]
        mov     r12, rbx
        mov     r9, qword ptr [rsp + 104] # 8-byte Reload
        jmp     .LBB16_44
.LBB16_5:
        mov     rbp, qword ptr [rsp + 104] # 8-byte Reload
        cmp     r12, r9
        je      .LBB16_6
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rsp + 88] # 8-byte Reload
        mov     rcx, qword ptr [rcx + 16]
        mov     qword ptr [rsp + 168], r9
        mov     qword ptr [rsp + 176], rax
        mov     qword ptr [rsp + 184], rbp
        mov     qword ptr [rsp + 192], rbx
        mov     qword ptr [rsp + 136], r12
        mov     qword ptr [rsp + 144], r13
        mov     rax, qword ptr [rsp + 96] # 8-byte Reload
        mov     qword ptr [rsp + 152], rax
        mov     qword ptr [rsp + 160], r11
        mov     qword ptr [rsp + 200], r15
        mov     qword ptr [rsp + 208], r14
        mov     qword ptr [rsp + 216], rcx
        mov     qword ptr [rsp + 224], r10
        movups  xmm0, xmmword ptr [rsp + 136]
        movups  xmm1, xmmword ptr [rsp + 152]
        movups  xmmword ptr [rsp + 48], xmm1
        movups  xmmword ptr [rsp + 32], xmm0
        movups  xmm0, xmmword ptr [rsp + 168]
        movups  xmm1, xmmword ptr [rsp + 184]
        movups  xmmword ptr [rsp + 16], xmm1
        movups  xmmword ptr [rsp], xmm0
        lea     rdi, [rsp + 232]
        lea     rsi, [rsp + 200]
        call    std::_Deque_iterator<int, int&, int*> std::move_backward<int>(std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int&, int*>)
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     r9, qword ptr [rax + 16]
        mov     rbp, qword ptr [rax + 32]
        mov     rbx, qword ptr [rax + 40]
        jmp     .LBB16_14
.LBB16_24:
        mov     r12, rcx
        mov     rbx, r12
        mov     r13, qword ptr [rsp + 72] # 8-byte Reload
        jmp     .LBB16_44
.LBB16_6:
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
.LBB16_14:
        mov     r14, qword ptr [rax + 24]
        mov     rax, r9
        sub     rax, r14
        sar     rax, 2
        mov     rcx, qword ptr [rsp + 120] # 8-byte Reload
        add     rax, rcx
        js      .LBB16_18
        cmp     rax, 127
        jg      .LBB16_17
        lea     r15, [r9 + 4*rcx]
        mov     r12, rbx
        cmp     rbx, r12
        jb      .LBB16_20
        jmp     .LBB16_22
.LBB16_18:
        mov     rcx, rax
        shr     rcx, 7
        movabs  rdx, -144115188075855872
        or      rcx, rdx
        jmp     .LBB16_19
.LBB16_9:
        mov     r15, qword ptr [rsi + 24]
        mov     r14, qword ptr [rsi + 32]
        mov     r12, qword ptr [rsi + 40]
        mov     rbx, qword ptr [rsi + 72]
        cmp     r12, rbx
        jae     .LBB16_12
        mov     rbp, r12
.LBB16_11:                              # =>This Inner Loop Header: Depth=1
        mov     rdi, qword ptr [rbp + 8]
        add     rbp, 8
        call    operator delete(void*)
        cmp     rbp, rbx
        jb      .LBB16_11
.LBB16_12:
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     qword ptr [rax + 48], r13
        mov     qword ptr [rax + 56], r15
        mov     qword ptr [rax + 64], r14
        mov     qword ptr [rax + 72], r12
        mov     rdi, qword ptr [rsp + 112] # 8-byte Reload
        mov     qword ptr [rdi], r13
        mov     qword ptr [rdi + 8], r15
        mov     qword ptr [rdi + 16], r14
        jmp     .LBB16_61
.LBB16_17:
        mov     rcx, rax
        shr     rcx, 7
.LBB16_19:
        lea     r12, [rbx + 8*rcx]
        mov     r14, qword ptr [rbx + 8*rcx]
        lea     rbp, [r14 + 512]
        shl     rcx, 7
        sub     rax, rcx
        lea     r15, [r14 + 4*rax]
        cmp     rbx, r12
        jae     .LBB16_22
.LBB16_20:                              # =>This Inner Loop Header: Depth=1
        mov     rdi, qword ptr [rbx]
        call    operator delete(void*)
        add     rbx, 8
        cmp     rbx, r12
        jb      .LBB16_20
.LBB16_22:
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     qword ptr [rax + 16], r15
        mov     qword ptr [rax + 24], r14
        mov     qword ptr [rax + 32], rbp
        mov     qword ptr [rax + 40], r12
        mov     rcx, qword ptr [rsp + 128] # 8-byte Reload
        mov     rdi, qword ptr [rsp + 112] # 8-byte Reload
        jmp     .LBB16_54
.LBB16_26:
        mov     rbx, rbp
        mov     r12, rbp
        mov     r13, qword ptr [rsp + 72] # 8-byte Reload
        mov     rbp, qword ptr [rsp + 80] # 8-byte Reload
.LBB16_44:
        mov     rcx, rbp
        sub     rcx, r13
        sar     rcx, 2
        sub     rcx, qword ptr [rsp + 120] # 8-byte Folded Reload
        js      .LBB16_48
        cmp     rcx, 127
        jg      .LBB16_47
        mov     ecx, 128
        sub     rcx, r9
        mov     rdx, qword ptr [rsp + 64] # 8-byte Reload
        mov     r14, qword ptr [rdx + 64]
        lea     r15, [rbp + 4*rcx]
        cmp     r12, rbx
        jb      .LBB16_51
        jmp     .LBB16_53
.LBB16_48:
        mov     rax, rcx
        shr     rax, 7
        movabs  rdx, -144115188075855872
        or      rax, rdx
        jmp     .LBB16_49
.LBB16_47:
        mov     rax, rcx
        shr     rax, 7
.LBB16_49:
        mov     rsi, qword ptr [r12 + 8*rax]
        lea     rdx, [r12 + 8*rax]
        lea     r14, [rsi + 512]
        shl     rax, 7
        sub     rcx, rax
        mov     r13, rsi
        lea     r15, [rsi + 4*rcx]
        mov     r12, rdx
        cmp     r12, rbx
        jae     .LBB16_53
.LBB16_51:
        mov     rbp, r12
.LBB16_52:                              # =>This Inner Loop Header: Depth=1
        mov     rdi, qword ptr [rbp + 8]
        add     rbp, 8
        call    operator delete(void*)
        cmp     rbp, rbx
        jb      .LBB16_52
.LBB16_53:
        mov     rax, qword ptr [rsp + 64] # 8-byte Reload
        mov     qword ptr [rax + 48], r15
        mov     qword ptr [rax + 56], r13
        mov     qword ptr [rax + 64], r14
        mov     qword ptr [rax + 72], r12
        mov     r15, qword ptr [rax + 16]
        mov     r14, qword ptr [rax + 24]
        mov     rbp, qword ptr [rax + 32]
        mov     r12, qword ptr [rax + 40]
        mov     rdi, qword ptr [rsp + 112] # 8-byte Reload
        mov     rcx, qword ptr [rsp + 128] # 8-byte Reload
.LBB16_54:
        mov     rax, r15
        sub     rax, r14
        sar     rax, 2
        add     rax, rcx
        js      .LBB16_58
        cmp     rax, 127
        jg      .LBB16_57
        lea     rax, [r15 + 4*rcx]
        jmp     .LBB16_60
.LBB16_58:
        mov     rcx, rax
        shr     rcx, 7
        movabs  rdx, -144115188075855872
        or      rcx, rdx
        jmp     .LBB16_59
.LBB16_57:
        mov     rcx, rax
        shr     rcx, 7
.LBB16_59:
        mov     r14, qword ptr [r12 + 8*rcx]
        lea     r12, [r12 + 8*rcx]
        lea     rbp, [r14 + 512]
        shl     rcx, 7
        sub     rax, rcx
        lea     rax, [r14 + 4*rax]
.LBB16_60:
        mov     qword ptr [rdi], rax
        mov     qword ptr [rdi + 8], r14
        mov     qword ptr [rdi + 16], rbp
.LBB16_61:
        mov     qword ptr [rdi + 24], r12
        mov     rax, rdi
        add     rsp, 264
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret

std::_Deque_iterator<int, int&, int*> std::move_backward<int>(std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int&, int*>): # @std::_Deque_iterator<int, int&, int*> std::move_backward<int>(std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int const&, int const*>, std::_Deque_iterator<int, int&, int*>)
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 24
        mov     r13, rsi
        mov     rbp, rdi
        mov     rdx, qword ptr [rsp + 136]
        sub     rdx, qword ptr [rsp + 104]
        shl     rdx, 4
        mov     rcx, qword ptr [rsp + 112]
        mov     rax, qword ptr [rsp + 120]
        mov     rsi, rcx
        sub     rsi, rax
        sar     rsi, 2
        add     rsi, rdx
        mov     rdx, qword ptr [rsp + 96]
        sub     rdx, qword ptr [rsp + 80]
        sar     rdx, 2
        lea     rbx, [rdx + rsi - 128]
        test    rbx, rbx
        jle     .LBB17_1
        mov     qword ptr [rsp + 16], rbp # 8-byte Spill
        lea     r15, [rsp + 112]
        lea     rdx, [r13 + 24]
        mov     qword ptr [rsp], rdx    # 8-byte Spill
        lea     rdx, [r13 + 16]
        mov     qword ptr [rsp + 8], rdx # 8-byte Spill
        mov     rdi, qword ptr [r13]
        mov     rdx, qword ptr [r13 + 8]
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
        mov     r12, rcx
        sub     r12, rax
        sar     r12, 2
        mov     rbp, rdi
        sub     rbp, rdx
        sar     rbp, 2
        test    r12, r12
        mov     rsi, rcx
        jne     .LBB17_5
        mov     rdx, qword ptr [r15 + 24]
        mov     rsi, qword ptr [rdx - 8]
        mov     edx, 512
        add     rsi, rdx
        mov     r12d, 128
.LBB17_5:                               #   in Loop: Header=BB17_3 Depth=1
        test    rbp, rbp
        jne     .LBB17_7
        mov     rdx, qword ptr [rsp]    # 8-byte Reload
        mov     rdx, qword ptr [rdx]
        mov     rdi, qword ptr [rdx - 8]
        mov     edx, 512
        add     rdi, rdx
        mov     ebp, 128
.LBB17_7:                               #   in Loop: Header=BB17_3 Depth=1
        cmp     rbp, r12
        cmovle  r12, rbp
        cmp     r12, rbx
        cmovg   r12, rbx
        mov     r14, r12
        neg     r14
        lea     rdx, [4*r12]
        test    rdx, rdx
        je      .LBB17_9
        mov     rax, rdx
        sar     rax, 2
        shl     rax, 2
        sub     rdi, rax
        lea     rsi, [rsi + 4*r14]
        call    memmove
        mov     rcx, qword ptr [r15]
        mov     rax, qword ptr [r15 + 8]
.LBB17_9:                               #   in Loop: Header=BB17_3 Depth=1
        mov     rdx, rcx
        sub     rdx, rax
        sar     rdx, 2
        sub     rdx, r12
        js      .LBB17_13
        cmp     rdx, 127
        jg      .LBB17_12
        lea     rcx, [rcx + 4*r14]
        jmp     .LBB17_15
.LBB17_13:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rcx, rdx
        shr     rcx, 7
        movabs  rax, -144115188075855872
        or      rcx, rax
        jmp     .LBB17_14
.LBB17_12:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rcx, rdx
        shr     rcx, 7
.LBB17_14:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rax, qword ptr [r15 + 24]
        lea     rsi, [rax + 8*rcx]
        mov     qword ptr [r15 + 24], rsi
        mov     rax, qword ptr [rax + 8*rcx]
        mov     qword ptr [r15 + 8], rax
        lea     rsi, [rax + 512]
        mov     qword ptr [r15 + 16], rsi
        shl     rcx, 7
        sub     rdx, rcx
        lea     rcx, [rax + 4*rdx]
.LBB17_15:                              #   in Loop: Header=BB17_3 Depth=1
        mov     qword ptr [r15], rcx
        mov     rdi, qword ptr [r13]
        mov     rdx, qword ptr [r13 + 8]
        mov     rsi, rdi
        sub     rsi, rdx
        sar     rsi, 2
        sub     rsi, r12
        js      .LBB17_19
        cmp     rsi, 127
        jg      .LBB17_18
        lea     rdi, [rdi + 4*r14]
        jmp     .LBB17_21
.LBB17_19:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rdi, rsi
        shr     rdi, 7
        movabs  rdx, -144115188075855872
        or      rdi, rdx
        jmp     .LBB17_20
.LBB17_18:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rdi, rsi
        shr     rdi, 7
.LBB17_20:                              #   in Loop: Header=BB17_3 Depth=1
        mov     rdx, qword ptr [r13 + 24]
        lea     rbp, [rdx + 8*rdi]
        mov     qword ptr [r13 + 24], rbp
        mov     rdx, qword ptr [rdx + 8*rdi]
        mov     qword ptr [r13 + 8], rdx
        lea     rbp, [rdx + 512]
        mov     qword ptr [r13 + 16], rbp
        shl     rdi, 7
        sub     rsi, rdi
        lea     rdi, [rdx + 4*rsi]
.LBB17_21:                              #   in Loop: Header=BB17_3 Depth=1
        mov     qword ptr [r13], rdi
        sub     rbx, r12
        jg      .LBB17_3
        mov     rbp, qword ptr [rsp + 16] # 8-byte Reload
        mov     r13, qword ptr [rsp]    # 8-byte Reload
        mov     rax, qword ptr [rsp + 8] # 8-byte Reload
        jmp     .LBB17_23
.LBB17_1:
        mov     rdi, qword ptr [r13]
        mov     rdx, qword ptr [r13 + 8]
        lea     rax, [r13 + 16]
        add     r13, 24
.LBB17_23:
        mov     qword ptr [rbp], rdi
        mov     qword ptr [rbp + 8], rdx
        mov     rax, qword ptr [rax]
        mov     qword ptr [rbp + 16], rax
        mov     rax, qword ptr [r13]
        mov     qword ptr [rbp + 24], rax
        mov     rax, rbp
        add     rsp, 24
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret

std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>): # @std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     r8, qword ptr [r14]
        mov     rcx, qword ptr [r14 + 8]
        movsxd  rax, dword ptr [rsi + 8]
        xor     edx, edx
        div     rcx
        mov     r9, rdx
        mov     rdi, qword ptr [r8 + 8*r9]
        mov     rax, rdi
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
        mov     rbx, rax
        mov     rax, qword ptr [rbx]
        cmp     rax, rsi
        jne     .LBB18_1
        cmp     rdi, rbx
        je      .LBB18_3
        mov     rax, qword ptr [rsi]
        test    rax, rax
        je      .LBB18_12
        movsxd  rax, dword ptr [rax + 8]
        xor     edx, edx
        div     rcx
        cmp     rdx, r9
        je      .LBB18_12
        mov     qword ptr [r8 + 8*rdx], rbx
        jmp     .LBB18_12
.LBB18_3:
        mov     r10, qword ptr [rsi]
        test    r10, r10
        je      .LBB18_6
        movsxd  rax, dword ptr [r10 + 8]
        xor     edx, edx
        div     rcx
        cmp     rdx, r9
        je      .LBB18_12
        mov     qword ptr [r8 + 8*rdx], rdi
        mov     r8, qword ptr [r14]
        mov     rdi, qword ptr [r8 + 8*r9]
.LBB18_6:
        lea     rax, [r14 + 16]
        cmp     rax, rdi
        jne     .LBB18_8
        mov     qword ptr [rdi], r10
.LBB18_8:
        mov     qword ptr [r8 + 8*r9], 0
.LBB18_12:
        mov     rax, qword ptr [rsi]
        mov     qword ptr [rbx], rax
        mov     rbx, qword ptr [rsi]
        mov     rdi, rsi
        call    operator delete(void*)
        dec     qword ptr [r14 + 24]
        mov     rax, rbx
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>): # @std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>)
        push    r14
        push    rbx
        push    rax
        mov     r14, rdi
        mov     r8, qword ptr [r14]
        mov     rcx, qword ptr [r14 + 8]
        movsxd  rax, dword ptr [rsi + 8]
        xor     edx, edx
        div     rcx
        mov     r9, rdx
        mov     rdi, qword ptr [r8 + 8*r9]
        mov     rax, rdi
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
        mov     rbx, rax
        mov     rax, qword ptr [rbx]
        cmp     rax, rsi
        jne     .LBB19_1
        cmp     rdi, rbx
        je      .LBB19_3
        mov     rax, qword ptr [rsi]
        test    rax, rax
        je      .LBB19_12
        movsxd  rax, dword ptr [rax + 8]
        xor     edx, edx
        div     rcx
        cmp     rdx, r9
        je      .LBB19_12
        mov     qword ptr [r8 + 8*rdx], rbx
        jmp     .LBB19_12
.LBB19_3:
        mov     r10, qword ptr [rsi]
        test    r10, r10
        je      .LBB19_6
        movsxd  rax, dword ptr [r10 + 8]
        xor     edx, edx
        div     rcx
        cmp     rdx, r9
        je      .LBB19_12
        mov     qword ptr [r8 + 8*rdx], rdi
        mov     r8, qword ptr [r14]
        mov     rdi, qword ptr [r8 + 8*r9]
.LBB19_6:
        lea     rax, [r14 + 16]
        cmp     rax, rdi
        jne     .LBB19_8
        mov     qword ptr [rdi], r10
.LBB19_8:
        mov     qword ptr [r8 + 8*r9], 0
.LBB19_12:
        mov     rax, qword ptr [rsi]
        mov     qword ptr [rbx], rax
        mov     rbx, qword ptr [rsi]
        mov     rdi, rsi
        call    operator delete(void*)
        dec     qword ptr [r14 + 24]
        mov     rax, rbx
        add     rsp, 8
        pop     rbx
        pop     r14
        ret

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops10_Iter_predIUlT_E_EEES9_S9_S9_T0_.isra.12:
        push    r12
        push    rbp
        mov     rbp, rsi
        sub     rbp, rdi
        push    rbx
        mov     r12, rsi
        mov     rax, rbp
        sar     rbp, 4
        mov     rbx, rdi
        sar     rax, 2
        test    rbp, rbp
        jle     .L2
        sal     rbp, 4
        add     rbp, rdi
        jmp     .L7
.L32:
        mov     edi, DWORD PTR [rbx+4]
        call    do_check(int)
        test    al, al
        jne     .L28
        mov     edi, DWORD PTR [rbx+8]
        call    do_check(int)
        test    al, al
        jne     .L29
        mov     edi, DWORD PTR [rbx+12]
        call    do_check(int)
        test    al, al
        jne     .L30
        add     rbx, 16
        cmp     rbx, rbp
        je      .L31
.L7:
        mov     edi, DWORD PTR [rbx]
        call    do_check(int)
        test    al, al
        je      .L32
.L3:
        cmp     r12, rbx
        je      .L14
        lea     rbp, [rbx+4]
        cmp     r12, rbp
        je      .L14
.L17:
        mov     edi, DWORD PTR [rbp+0]
        call    do_check(int)
        test    al, al
        jne     .L16
        mov     eax, DWORD PTR [rbp+0]
        add     rbx, 4
        mov     DWORD PTR [rbx-4], eax
.L16:
        add     rbp, 4
        cmp     rbp, r12
        jne     .L17
.L14:
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        ret
.L31:
        mov     rax, r12
        sub     rax, rbx
        sar     rax, 2
.L2:
        cmp     rax, 2
        je      .L9
        cmp     rax, 3
        je      .L10
        cmp     rax, 1
        je      .L11
.L8:
        mov     rbx, r12
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        ret
.L28:
        add     rbx, 4
        jmp     .L3
.L10:
        mov     edi, DWORD PTR [rbx]
        call    do_check(int)
        test    al, al
        jne     .L3
        add     rbx, 4
.L9:
        mov     edi, DWORD PTR [rbx]
        call    do_check(int)
        test    al, al
        jne     .L3
        add     rbx, 4
.L11:
        mov     edi, DWORD PTR [rbx]
        call    do_check(int)
        test    al, al
        je      .L8
        jmp     .L3
.L29:
        add     rbx, 8
        jmp     .L3
.L30:
        add     rbx, 12
        jmp     .L3
_ZSt11__remove_ifISt15_Deque_iteratorIiRiPiEN9__gnu_cxx5__ops10_Iter_predIUlT_E_EEES7_S7_S7_T0_.isra.29:
        push    r15
        push    r14
        mov     r14, rdx
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rsi
        sub     rsp, 72
        mov     rsi, QWORD PTR [rdx+8]
        mov     rax, QWORD PTR [rdx]
        mov     rdx, QWORD PTR [rdx+16]
        mov     r13, QWORD PTR [rbx+24]
        mov     rcx, QWORD PTR [rbx+8]
        mov     rbp, QWORD PTR [rbx+16]
        mov     QWORD PTR [rsp+40], rax
        sub     rax, rsi
        mov     QWORD PTR [rsp+48], rsi
        mov     QWORD PTR [rsp+56], rdx
        mov     rdx, QWORD PTR [r14+24]
        sar     rax, 2
        mov     rsi, rax
        mov     QWORD PTR [rsp+32], rax
        mov     r15, QWORD PTR [rbx]
        mov     QWORD PTR [rsp+8], rcx
        mov     QWORD PTR [rsp+16], rdi
        mov     rax, rdx
        mov     QWORD PTR [rsp+24], rdx
        sub     rax, r13
        sar     rax, 3
        sub     rax, 1
        sal     rax, 7
        lea     rcx, [rax+rsi]
        mov     rax, rbp
        sub     rax, r15
        sar     rax, 2
        add     rax, rcx
        mov     r12, rax
        sar     r12, 2
        test    r12, r12
        jg      .L40
        jmp     .L34
.L36:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
.L66:
        add     r15, 4
        cmp     r15, rbp
        je      .L62
.L37:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
        add     r15, 4
        cmp     rbp, r15
        je      .L63
.L38:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
        add     r15, 4
        cmp     rbp, r15
        je      .L64
        sub     r12, 1
        je      .L65
.L40:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
        add     r15, 4
        cmp     rbp, r15
        jne     .L36
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        mov     edi, DWORD PTR [r15]
        mov     QWORD PTR [rsp+8], r15
        lea     rbp, [r15+512]
        call    do_check(int)
        test    al, al
        je      .L66
.L35:
        mov     rcx, QWORD PTR [r14]
        mov     rax, QWORD PTR [rsp+8]
        mov     QWORD PTR [rbx], r15
        mov     QWORD PTR [rbx+16], rbp
        mov     QWORD PTR [rbx+24], r13
        cmp     rcx, r15
        mov     QWORD PTR [rbx+8], rax
        je      .L48
        lea     rax, [r15+4]
        cmp     rax, rbp
        mov     QWORD PTR [rbx], rax
        jne     .L51
        jmp     .L67
.L50:
        add     rax, 4
        cmp     rax, QWORD PTR [rbx+16]
        mov     rcx, QWORD PTR [r14]
        mov     QWORD PTR [rbx], rax
        je      .L68
.L51:
        cmp     rax, rcx
        je      .L48
.L69:
        mov     edi, DWORD PTR [rax]
        call    do_check(int)
        test    al, al
        mov     rax, QWORD PTR [rbx]
        jne     .L50
        mov     ecx, DWORD PTR [rax]
        add     r15, 4
        mov     DWORD PTR [r15-4], ecx
        cmp     r15, rbp
        jne     .L50
        mov     r15, QWORD PTR [r13+8]
        add     rax, 4
        add     r13, 8
        cmp     rax, QWORD PTR [rbx+16]
        mov     QWORD PTR [rbx], rax
        mov     rcx, QWORD PTR [r14]
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
        jne     .L51
.L68:
        mov     rax, QWORD PTR [rbx+24]
        lea     rsi, [rax+8]
        mov     rax, QWORD PTR [rax+8]
        mov     QWORD PTR [rbx+24], rsi
        lea     rsi, [rax+512]
        cmp     rax, rcx
        mov     QWORD PTR [rbx+8], rax
        mov     QWORD PTR [rbx], rax
        mov     QWORD PTR [rbx+16], rsi
        jne     .L69
.L48:
        mov     rax, QWORD PTR [rsp+16]
        mov     rdx, QWORD PTR [rsp+8]
        mov     QWORD PTR [rax], r15
        mov     QWORD PTR [rax+8], rdx
        mov     QWORD PTR [rax+16], rbp
        mov     QWORD PTR [rax+24], r13
        mov     rax, QWORD PTR [rsp+16]
        add     rsp, 72
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
.L62:
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
        jmp     .L37
.L63:
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
        jmp     .L38
.L64:
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        sub     r12, 1
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
        jne     .L40
.L65:
        mov     rax, QWORD PTR [rsp+24]
        mov     rcx, QWORD PTR [rsp+32]
        sub     rax, r13
        sar     rax, 3
        sub     rax, 1
        sal     rax, 7
        add     rcx, rax
        mov     rax, rbp
        sub     rax, r15
        sar     rax, 2
        add     rax, rcx
.L34:
        cmp     rax, 2
        je      .L42
        cmp     rax, 3
        je      .L43
        cmp     rax, 1
        je      .L44
.L41:
        mov     rax, QWORD PTR [rsp+48]
        mov     r13, QWORD PTR [rsp+24]
        mov     rbp, QWORD PTR [rsp+56]
        mov     r15, QWORD PTR [rsp+40]
        mov     QWORD PTR [rsp+8], rax
        jmp     .L35
.L43:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
        add     r15, 4
        cmp     rbp, r15
        jne     .L42
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
.L42:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        jne     .L35
        add     r15, 4
        cmp     rbp, r15
        jne     .L44
        mov     r15, QWORD PTR [r13+8]
        add     r13, 8
        lea     rbp, [r15+512]
        mov     QWORD PTR [rsp+8], r15
.L44:
        mov     edi, DWORD PTR [r15]
        call    do_check(int)
        test    al, al
        je      .L41
        jmp     .L35
.L67:
        lea     rax, [r13+8]
        mov     QWORD PTR [rbx+24], rax
        mov     rax, QWORD PTR [r13+8]
        lea     rsi, [rax+512]
        mov     QWORD PTR [rbx+8], rax
        mov     QWORD PTR [rbx], rax
        mov     QWORD PTR [rbx+16], rsi
        jmp     .L51
counting(std::__cxx11::list<int, std::allocator<int> >&):
        push    r12
        push    rbp
        mov     rbp, rdi
        push    rbx
        mov     rbx, QWORD PTR [rdi]
        cmp     rdi, rbx
        jne     .L71
        jmp     .L70
.L73:
        mov     rbx, QWORD PTR [rbx]
        cmp     rbp, rbx
        je      .L70
.L71:
        mov     edi, DWORD PTR [rbx+16]
        call    do_check(int)
        test    al, al
        je      .L73
        mov     r12, QWORD PTR [rbx]
        sub     QWORD PTR [rbp+16], 1
        mov     rdi, rbx
        call    std::__detail::_List_node_base::_M_unhook()
        mov     rdi, rbx
        mov     rbx, r12
        call    operator delete(void*)
        cmp     rbp, rbx
        jne     .L71
.L70:
        pop     rbx
        pop     rbp
        pop     r12
        ret
counting(std::set<int, std::less<int>, std::allocator<int> >&):
        push    r13
        push    r12
        mov     r12, rdi
        push    rbp
        push    rbx
        lea     rbp, [rdi+8]
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+24]
        cmp     rbp, rbx
        jne     .L79
        jmp     .L78
.L81:
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     rbx, rax
        cmp     rbp, rbx
        je      .L78
.L79:
        mov     edi, DWORD PTR [rbx+32]
        call    do_check(int)
        test    al, al
        mov     rdi, rbx
        je      .L81
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     rdi, rbx
        mov     r13, rax
        mov     rsi, rbp
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rbx, r13
        mov     rdi, rax
        call    operator delete(void*)
        sub     QWORD PTR [r12+40], 1
        cmp     rbp, rbx
        jne     .L79
.L78:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
counting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&):
        push    r15
        push    r14
        movabs  r14, -4294967296
        push    r13
        push    r12
        lea     r12, [rdi+8]
        push    rbp
        push    rbx
        mov     r13, rdi
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+24]
        cmp     r12, rbx
        jne     .L87
        jmp     .L86
.L89:
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     rbx, rax
        cmp     r12, rbx
        je      .L86
.L87:
        mov     eax, DWORD PTR [rbx+32]
        and     rbp, r14
        mov     rsi, QWORD PTR [rbx+40]
        or      rbp, rax
        mov     edi, ebp
        call    do_check(std::pair<int, long>)
        test    al, al
        mov     rdi, rbx
        je      .L89
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     rdi, rbx
        mov     r15, rax
        mov     rsi, r12
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rbx, r15
        mov     rdi, rax
        call    operator delete(void*)
        sub     QWORD PTR [r13+40], 1
        cmp     r12, rbx
        jne     .L87
.L86:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
noncounting(std::__cxx11::list<int, std::allocator<int> >&):
        push    r12
        push    rbp
        mov     rbp, rdi
        push    rbx
        mov     rbx, QWORD PTR [rdi]
        cmp     rdi, rbx
        jne     .L95
        jmp     .L94
.L97:
        mov     rbx, QWORD PTR [rbx]
        cmp     rbp, rbx
        je      .L94
.L95:
        mov     edi, DWORD PTR [rbx+16]
        call    do_check(int)
        test    al, al
        je      .L97
        mov     r12, QWORD PTR [rbx]
        sub     QWORD PTR [rbp+16], 1
        mov     rdi, rbx
        call    std::__detail::_List_node_base::_M_unhook()
        mov     rdi, rbx
        mov     rbx, r12
        call    operator delete(void*)
        cmp     rbp, rbx
        jne     .L95
.L94:
        pop     rbx
        pop     rbp
        pop     r12
        ret
noncounting(std::set<int, std::less<int>, std::allocator<int> >&):
        push    r13
        push    r12
        mov     r12, rdi
        push    rbp
        push    rbx
        lea     rbp, [rdi+8]
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+24]
        cmp     rbp, rbx
        jne     .L103
        jmp     .L102
.L105:
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     rbx, rax
        cmp     rbp, rbx
        je      .L102
.L103:
        mov     edi, DWORD PTR [rbx+32]
        call    do_check(int)
        test    al, al
        mov     rdi, rbx
        je      .L105
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base const*)
        mov     rdi, rbx
        mov     r13, rax
        mov     rsi, rbp
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rbx, r13
        mov     rdi, rax
        call    operator delete(void*)
        sub     QWORD PTR [r12+40], 1
        cmp     rbp, rbx
        jne     .L103
.L102:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
noncounting(std::map<int, long, std::less<int>, std::allocator<std::pair<int const, long> > >&):
        push    r15
        push    r14
        movabs  r14, -4294967296
        push    r13
        push    r12
        lea     r12, [rdi+8]
        push    rbp
        push    rbx
        mov     r13, rdi
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+24]
        cmp     r12, rbx
        jne     .L111
        jmp     .L110
.L113:
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     rbx, rax
        cmp     r12, rbx
        je      .L110
.L111:
        mov     eax, DWORD PTR [rbx+32]
        and     rbp, r14
        mov     rsi, QWORD PTR [rbx+40]
        or      rbp, rax
        mov     edi, ebp
        call    do_check(std::pair<int, long>)
        test    al, al
        mov     rdi, rbx
        je      .L113
        call    std::_Rb_tree_increment(std::_Rb_tree_node_base*)
        mov     rdi, rbx
        mov     r15, rax
        mov     rsi, r12
        call    std::_Rb_tree_rebalance_for_erase(std::_Rb_tree_node_base*, std::_Rb_tree_node_base&)
        mov     rbx, r15
        mov     rdi, rax
        call    operator delete(void*)
        sub     QWORD PTR [r13+40], 1
        cmp     r12, rbx
        jne     .L111
.L110:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
std::vector<int, std::allocator<int> >::_M_erase(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >):
        cmp     rsi, rdx
        mov     rcx, rsi
        je      .L122
        push    rbp
        push    rbx
        mov     rbx, rdx
        mov     rbp, rdi
        sub     rsp, 8
        mov     rax, QWORD PTR [rdi+8]
        mov     rdx, rax
        sub     rdx, rbx
        cmp     rbx, rax
        je      .L120
        mov     rdi, rcx
        mov     rsi, rbx
        call    memmove
        mov     rdx, QWORD PTR [rbp+8]
        mov     rcx, rax
        sub     rdx, rbx
.L120:
        add     rdx, rcx
        mov     rax, rcx
        mov     QWORD PTR [rbp+8], rdx
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret
.L122:
        mov     rax, rsi
        ret
counting(std::vector<int, std::allocator<int> >&):
        push    rbp
        push    rbx
        mov     rbx, rdi
        sub     rsp, 8
        mov     rbp, QWORD PTR [rdi+8]
        mov     rdi, QWORD PTR [rdi]
        mov     rsi, rbp
        call    _ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops10_Iter_predIUlT_E_EEES9_S9_S9_T0_.isra.12
        add     rsp, 8
        mov     rdx, rbp
        mov     rdi, rbx
        pop     rbx
        pop     rbp
        mov     rsi, rax
        jmp     std::vector<int, std::allocator<int> >::_M_erase(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >)
noncounting(std::vector<int, std::allocator<int> >&):
        push    rbp
        push    rbx
        mov     rbx, rdi
        sub     rsp, 8
        mov     rbp, QWORD PTR [rdi+8]
        mov     rdi, QWORD PTR [rdi]
        mov     rsi, rbp
        call    _ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops10_Iter_predIUlT_E_EEES9_S9_S9_T0_.isra.12
        add     rsp, 8
        mov     rdx, rbp
        mov     rdi, rbx
        pop     rbx
        pop     rbp
        mov     rsi, rax
        jmp     std::vector<int, std::allocator<int> >::_M_erase(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >)
std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>):
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 88
        mov     r12, QWORD PTR [rdx]
        mov     rbx, QWORD PTR [rcx]
        mov     QWORD PTR [rsp], rdi
        cmp     r12, rbx
        je      .L186
        mov     rdi, QWORD PTR [rsi+16]
        mov     rax, QWORD PTR [rsi+48]
        mov     r13, rsi
        mov     r14, QWORD PTR [rsi+24]
        mov     rbp, QWORD PTR [rsi+32]
        mov     r15, QWORD PTR [rsi+40]
        mov     rsi, QWORD PTR [rsi+72]
        cmp     r12, rdi
        mov     QWORD PTR [rsp+8], rax
        je      .L187
.L132:
        mov     r10, QWORD PTR [rdx+24]
        mov     rax, QWORD PTR [rcx+24]
        mov     r8, QWORD PTR [rcx+8]
        mov     r11, QWORD PTR [rdx+16]
        mov     QWORD PTR [rsp+48], rax
        sub     rax, r10
        sar     rax, 3
        mov     QWORD PTR [rsp+56], r11
        sub     rax, 1
        mov     r9, rax
        mov     rax, rbx
        sub     rax, r8
        sal     r9, 7
        sar     rax, 2
        add     rax, r9
        mov     r9, r11
        mov     r11, r10
        sub     r9, r12
        sub     r11, r15
        sar     r9, 2
        add     r9, rax
        mov     rax, r11
        mov     r11, r12
        mov     QWORD PTR [rsp+24], r9
        mov     r9, QWORD PTR [rdx+8]
        sar     rax, 3
        sub     rax, 1
        mov     rdx, rbp
        sub     rdx, rdi
        sal     rax, 7
        sub     r11, r9
        sar     rdx, 2
        sar     r11, 2
        add     rax, r11
        lea     r11, [rax+rdx]
        mov     rax, QWORD PTR [rsp+8]
        mov     QWORD PTR [rsp+16], r11
        mov     r11, QWORD PTR [r13+56]
        sub     rax, r11
        mov     QWORD PTR [rsp+40], r11
        mov     r11, rax
        mov     rax, rsi
        sub     rax, r15
        sar     r11, 2
        sar     rax, 3
        sub     rax, 1
        sal     rax, 7
        add     rax, r11
        add     rax, rdx
        sub     rax, QWORD PTR [rsp+24]
        mov     rdx, QWORD PTR [rsp+16]
        shr     rax
        cmp     rax, rdx
        jb      .L135
        cmp     r12, rdi
        je      .L136
        test    rdx, rdx
        jle     .L136
        mov     r15, rdx
        mov     rcx, QWORD PTR [rsp+48]
        mov     QWORD PTR [rsp+56], r13
        jmp     .L149
.L191:
        mov     rax, QWORD PTR [r10-8]
        cmp     rbx, r8
        mov     ebp, 128
        lea     rsi, [rax+512]
        mov     rax, rsi
        jne     .L178
.L192:
        mov     rdi, QWORD PTR [rcx-8]
        mov     edx, 128
        add     rdi, 512
.L139:
        cmp     rbp, r15
        cmovg   rbp, r15
        cmp     rbp, rdx
        cmovg   rbp, rdx
        lea     rdx, [0+rbp*4]
        mov     r11, rdx
        neg     r11
        add     rsi, r11
        cmp     rsi, rax
        je      .L140
        add     rdi, r11
        mov     QWORD PTR [rsp+48], r9
        mov     QWORD PTR [rsp+40], r10
        mov     QWORD PTR [rsp+32], r8
        mov     QWORD PTR [rsp+8], rcx
        call    memmove
        mov     r9, QWORD PTR [rsp+48]
        mov     r10, QWORD PTR [rsp+40]
        mov     r8, QWORD PTR [rsp+32]
        mov     rcx, QWORD PTR [rsp+8]
.L140:
        sub     r14, rbp
        mov     rax, r14
        js      .L141
        sar     rax, 7
        cmp     r14, 127
        jle     .L188
.L144:
        lea     r10, [r10+rax*8]
        sal     rax, 7
        sub     r14, rax
        sub     r13, rbp
        mov     r9, QWORD PTR [r10]
        mov     rax, r13
        lea     r12, [r9+r14*4]
        js      .L145
.L198:
        sar     rax, 7
        cmp     r13, 127
        jle     .L189
.L148:
        lea     rcx, [rcx+rax*8]
        sal     rax, 7
        sub     r13, rax
        mov     r8, QWORD PTR [rcx]
        lea     rbx, [r8+r13*4]
.L147:
        sub     r15, rbp
        test    r15, r15
        jle     .L190
.L149:
        mov     r14, r12
        mov     r13, rbx
        mov     rax, r12
        sub     r14, r9
        sub     r13, r8
        sar     r14, 2
        sar     r13, 2
        cmp     r12, r9
        je      .L191
        cmp     rbx, r8
        mov     rbp, r14
        mov     rsi, r12
        je      .L192
.L178:
        mov     rdx, r13
        mov     rdi, rbx
        jmp     .L139
.L135:
        cmp     rbx, QWORD PTR [rsp+8]
        je      .L156
        mov     rdi, QWORD PTR [rcx+16]
        mov     rcx, QWORD PTR [rsp+48]
        mov     r15, rsi
        sub     r15, rcx
        mov     QWORD PTR [rsp+32], rdi
        sub     rdi, rbx
        sar     r15, 3
        sub     r15, 1
        sal     r15, 7
        lea     rax, [r15+r11]
        mov     r15, rdi
        sar     r15, 2
        add     r15, rax
        test    r15, r15
        jle     .L156
        mov     r14, r9
        mov     QWORD PTR [rsp+72], r13
        mov     r11, QWORD PTR [rsp+56]
        mov     r9, rcx
        mov     r13, r8
        jmp     .L166
.L194:
        cmp     rax, 127
        mov     rbx, r8
        jle     .L160
        mov     rdx, rax
        sar     rdx, 7
.L161:
        lea     r9, [r9+rdx*8]
        sal     rdx, 7
        sub     rax, rdx
        mov     r13, QWORD PTR [r9]
        lea     rdi, [r13+512]
        lea     rbx, [r13+0+rax*4]
        mov     QWORD PTR [rsp+32], rdi
.L160:
        mov     rax, r12
        sub     rax, r14
        sar     rax, 2
        add     rax, rbp
        mov     rdx, rax
        js      .L162
        sar     rdx, 7
        add     r12, rcx
        cmp     rax, 127
        jle     .L164
.L165:
        lea     r10, [r10+rdx*8]
        sal     rdx, 7
        sub     rax, rdx
        mov     r14, QWORD PTR [r10]
        lea     r11, [r14+512]
        lea     r12, [r14+rax*4]
.L164:
        sub     r15, rbp
        test    r15, r15
        jle     .L193
.L166:
        mov     rbp, r11
        sub     rbp, r12
        mov     rax, rbp
        mov     rbp, QWORD PTR [rsp+32]
        sar     rax, 2
        sub     rbp, rbx
        sar     rbp, 2
        cmp     rax, rbp
        cmovle  rbp, rax
        cmp     rbp, r15
        cmovg   rbp, r15
        lea     rcx, [0+rbp*4]
        lea     r8, [rbx+rcx]
        cmp     r8, rbx
        je      .L158
        mov     rdx, rcx
        mov     rsi, rbx
        mov     rdi, r12
        mov     QWORD PTR [rsp+64], r10
        mov     QWORD PTR [rsp+56], r9
        mov     QWORD PTR [rsp+48], r11
        mov     QWORD PTR [rsp+40], r8
        mov     QWORD PTR [rsp+8], rcx
        call    memmove
        mov     r10, QWORD PTR [rsp+64]
        mov     r9, QWORD PTR [rsp+56]
        mov     r11, QWORD PTR [rsp+48]
        mov     r8, QWORD PTR [rsp+40]
        mov     rcx, QWORD PTR [rsp+8]
.L158:
        sub     rbx, r13
        sar     rbx, 2
        mov     rax, rbx
        add     rax, rbp
        jns     .L194
        mov     rdx, rax
        not     rdx
        shr     rdx, 7
        not     rdx
        jmp     .L161
.L190:
        mov     r13, QWORD PTR [rsp+56]
        mov     rdi, QWORD PTR [r13+16]
        mov     r14, QWORD PTR [r13+24]
        mov     rbp, QWORD PTR [r13+32]
        mov     r15, QWORD PTR [r13+40]
.L136:
        mov     rax, rdi
        mov     rcx, QWORD PTR [rsp+24]
        sub     rax, r14
        sar     rax, 2
        add     rax, rcx
        mov     rdx, rax
        js      .L150
        sar     rdx, 7
        cmp     rax, 127
        jle     .L195
.L153:
        lea     r12, [r15+rdx*8]
        sal     rdx, 7
        sub     rax, rdx
        mov     r14, QWORD PTR [r12]
        cmp     r12, r15
        lea     rbp, [r14+512]
        lea     rbx, [r14+rax*4]
        jbe     .L152
.L154:
        mov     rdi, QWORD PTR [r15]
        add     r15, 8
        call    operator delete(void*)
        cmp     r15, r12
        jb      .L154
.L152:
        mov     QWORD PTR [r13+16], rbx
        mov     QWORD PTR [r13+24], r14
        mov     QWORD PTR [r13+32], rbp
        mov     QWORD PTR [r13+40], r12
        jmp     .L155
.L193:
        mov     r13, QWORD PTR [rsp+72]
        mov     r11, QWORD PTR [r13+48]
        mov     rax, QWORD PTR [r13+56]
        mov     rsi, QWORD PTR [r13+72]
        mov     QWORD PTR [rsp+8], r11
        sub     r11, rax
        mov     QWORD PTR [rsp+40], rax
        sar     r11, 2
.L156:
        mov     rdi, QWORD PTR [rsp+24]
        mov     r12, QWORD PTR [r13+64]
        sub     r11, rdi
        mov     rax, r11
        js      .L167
        sar     rax, 7
        cmp     r11, 127
        jle     .L196
.L170:
        lea     rbp, [rsi+rax*8]
        sal     rax, 7
        sub     r11, rax
        mov     rcx, QWORD PTR [rbp+0]
        lea     r12, [rcx+512]
        lea     r15, [rcx+r11*4]
        mov     QWORD PTR [rsp+40], rcx
.L169:
        lea     rbx, [rsi+8]
        lea     r14, [rbp+8]
        cmp     rbx, r14
        jbe     .L171
.L172:
        mov     rdi, QWORD PTR [r14]
        add     r14, 8
        call    operator delete(void*)
        cmp     rbx, r14
        ja      .L172
.L171:
        mov     rax, QWORD PTR [rsp+40]
        mov     QWORD PTR [r13+64], r12
        mov     QWORD PTR [r13+72], rbp
        mov     rbx, QWORD PTR [r13+16]
        mov     r14, QWORD PTR [r13+24]
        mov     rbp, QWORD PTR [r13+32]
        mov     r12, QWORD PTR [r13+40]
        mov     QWORD PTR [r13+48], r15
        mov     QWORD PTR [r13+56], rax
.L155:
        mov     rax, rbx
        mov     rdi, QWORD PTR [rsp+16]
        sub     rax, r14
        sar     rax, 2
        add     rax, rdi
        mov     rdx, rax
        js      .L173
        sar     rdx, 7
        cmp     rax, 127
        jle     .L197
.L176:
        lea     r12, [r12+rdx*8]
        sal     rdx, 7
        sub     rax, rdx
        mov     r14, QWORD PTR [r12]
        lea     rbp, [r14+512]
        lea     rax, [r14+rax*4]
.L175:
        mov     rsi, QWORD PTR [rsp]
        mov     QWORD PTR [rsi], rax
        mov     QWORD PTR [rsi+8], r14
        mov     QWORD PTR [rsi+16], rbp
        mov     QWORD PTR [rsi+24], r12
.L129:
        mov     rax, QWORD PTR [rsp]
        add     rsp, 88
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
.L186:
        mov     rax, QWORD PTR [rdx+8]
        mov     QWORD PTR [rdi], r12
        mov     QWORD PTR [rdi+8], rax
        mov     rax, QWORD PTR [rdx+16]
        mov     QWORD PTR [rdi+16], rax
        mov     rax, QWORD PTR [rdx+24]
        mov     QWORD PTR [rdi+24], rax
        jmp     .L129
.L187:
        cmp     rbx, rax
        jne     .L132
        lea     rax, [rsi+8]
        lea     rbx, [r15+8]
        cmp     rax, rbx
        jbe     .L133
        mov     QWORD PTR [rsp+8], rbp
        mov     rbp, rbx
        mov     rbx, rax
.L134:
        mov     rdi, QWORD PTR [rbp+0]
        add     rbp, 8
        call    operator delete(void*)
        cmp     rbx, rbp
        ja      .L134
        mov     rbp, QWORD PTR [rsp+8]
.L133:
        mov     rax, QWORD PTR [rsp]
        mov     QWORD PTR [r13+48], r12
        mov     QWORD PTR [r13+56], r14
        mov     QWORD PTR [r13+64], rbp
        mov     QWORD PTR [r13+72], r15
        mov     QWORD PTR [rax], r12
        mov     QWORD PTR [rax+8], r14
        mov     QWORD PTR [rax+16], rbp
        mov     QWORD PTR [rax+24], r15
        jmp     .L129
.L197:
        lea     rax, [rbx+rdi*4]
        jmp     .L175
.L196:
        mov     rax, rdi
        mov     rdi, QWORD PTR [rsp+8]
        mov     rbp, rsi
        neg     rax
        lea     r15, [rdi+rax*4]
        jmp     .L169
.L195:
        lea     rbx, [rdi+rcx*4]
        mov     r12, r15
        mov     QWORD PTR [r13+24], r14
        mov     QWORD PTR [r13+32], rbp
        mov     QWORD PTR [r13+40], r12
        mov     QWORD PTR [r13+16], rbx
        jmp     .L155
.L189:
        mov     rax, rbp
        neg     rax
        lea     rbx, [rbx+rax*4]
        jmp     .L147
.L188:
        mov     rax, rbp
        neg     rax
        sub     r13, rbp
        lea     r12, [r12+rax*4]
        mov     rax, r13
        jns     .L198
.L145:
        not     rax
        shr     rax, 7
        not     rax
        jmp     .L148
.L141:
        not     rax
        shr     rax, 7
        not     rax
        jmp     .L144
.L162:
        not     rdx
        shr     rdx, 7
        not     rdx
        jmp     .L165
.L173:
        not     rdx
        shr     rdx, 7
        not     rdx
        jmp     .L176
.L167:
        not     rax
        shr     rax, 7
        not     rax
        jmp     .L170
.L150:
        not     rdx
        shr     rdx, 7
        not     rdx
        jmp     .L153
counting(std::deque<int, std::allocator<int> >&):
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rdi
        add     rsp, -128
        mov     rsi, QWORD PTR [rbx+16]
        mov     rdx, QWORD PTR [rbx+32]
        mov     r12, QWORD PTR [rdi+48]
        mov     r8, QWORD PTR [rdi+56]
        mov     rdi, QWORD PTR [rdi+64]
        mov     rbp, QWORD PTR [rbx+72]
        mov     rcx, QWORD PTR [rbx+24]
        mov     rax, QWORD PTR [rbx+40]
        mov     QWORD PTR [rsp+96], rsi
        mov     QWORD PTR [rsp+112], rdx
        lea     rsi, [rsp+96]
        lea     rdx, [rsp+64]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdi, rsp
        mov     QWORD PTR [rsp+64], r12
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+88], rbp
        mov     QWORD PTR [rsp+104], rcx
        mov     QWORD PTR [rsp+120], rax
        call    _ZSt11__remove_ifISt15_Deque_iteratorIiRiPiEN9__gnu_cxx5__ops10_Iter_predIUlT_E_EEES7_S7_S7_T0_.isra.29
        mov     QWORD PTR [rsp+64], r12
        mov     rax, QWORD PTR [rbp+0]
        lea     rcx, [rsp+64]
        mov     rdx, QWORD PTR [rsp+24]
        lea     rdi, [rsp+32]
        mov     rsi, rbx
        mov     QWORD PTR [rsp+88], rbp
        mov     QWORD PTR [rsp+72], rax
        add     rax, 512
        mov     QWORD PTR [rsp+80], rax
        mov     rax, QWORD PTR [rsp]
        mov     QWORD PTR [rsp+96], rax
        mov     rax, QWORD PTR [rdx]
        mov     QWORD PTR [rsp+120], rdx
        lea     rdx, [rsp+96]
        mov     QWORD PTR [rsp+104], rax
        add     rax, 512
        mov     QWORD PTR [rsp+112], rax
        call    std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>)
        sub     rsp, -128
        pop     rbx
        pop     rbp
        pop     r12
        ret
noncounting(std::deque<int, std::allocator<int> >&):
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rdi
        add     rsp, -128
        mov     rsi, QWORD PTR [rbx+16]
        mov     rdx, QWORD PTR [rbx+32]
        mov     r12, QWORD PTR [rdi+48]
        mov     r8, QWORD PTR [rdi+56]
        mov     rdi, QWORD PTR [rdi+64]
        mov     rbp, QWORD PTR [rbx+72]
        mov     rcx, QWORD PTR [rbx+24]
        mov     rax, QWORD PTR [rbx+40]
        mov     QWORD PTR [rsp+96], rsi
        mov     QWORD PTR [rsp+112], rdx
        lea     rsi, [rsp+96]
        lea     rdx, [rsp+64]
        mov     QWORD PTR [rsp+80], rdi
        mov     rdi, rsp
        mov     QWORD PTR [rsp+64], r12
        mov     QWORD PTR [rsp+72], r8
        mov     QWORD PTR [rsp+88], rbp
        mov     QWORD PTR [rsp+104], rcx
        mov     QWORD PTR [rsp+120], rax
        call    _ZSt11__remove_ifISt15_Deque_iteratorIiRiPiEN9__gnu_cxx5__ops10_Iter_predIUlT_E_EEES7_S7_S7_T0_.isra.29
        mov     QWORD PTR [rsp+64], r12
        mov     rax, QWORD PTR [rbp+0]
        lea     rcx, [rsp+64]
        mov     rdx, QWORD PTR [rsp+24]
        lea     rdi, [rsp+32]
        mov     rsi, rbx
        mov     QWORD PTR [rsp+88], rbp
        mov     QWORD PTR [rsp+72], rax
        add     rax, 512
        mov     QWORD PTR [rsp+80], rax
        mov     rax, QWORD PTR [rsp]
        mov     QWORD PTR [rsp+96], rax
        mov     rax, QWORD PTR [rdx]
        mov     QWORD PTR [rsp+120], rdx
        lea     rdx, [rsp+96]
        mov     QWORD PTR [rsp+104], rax
        add     rax, 512
        mov     QWORD PTR [rsp+112], rax
        call    std::deque<int, std::allocator<int> >::_M_erase(std::_Deque_iterator<int, int&, int*>, std::_Deque_iterator<int, int&, int*>)
        sub     rsp, -128
        pop     rbx
        pop     rbp
        pop     r12
        ret
std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>):
        push    rbp
        push    rbx
        mov     rbx, rdi
        xor     edx, edx
        sub     rsp, 8
        movsx   rax, DWORD PTR [rsi+8]
        mov     rdi, QWORD PTR [rdi+8]
        mov     r10, QWORD PTR [rbx]
        div     rdi
        lea     r11, [r10+rdx*8]
        mov     r9, rdx
        mov     rax, QWORD PTR [r11]
        mov     rcx, rax
        jmp     .L204
.L209:
        mov     rcx, rdx
.L204:
        mov     rdx, QWORD PTR [rcx]
        cmp     rsi, rdx
        jne     .L209
        cmp     rax, rcx
        mov     r8, QWORD PTR [rsi]
        je      .L215
        test    r8, r8
        je      .L207
        movsx   rax, DWORD PTR [r8+8]
        xor     edx, edx
        div     rdi
        cmp     r9, rdx
        je      .L207
        mov     QWORD PTR [r10+rdx*8], rcx
.L207:
        mov     QWORD PTR [rcx], r8
        mov     rbp, QWORD PTR [rsi]
        mov     rdi, rsi
        call    operator delete(void*)
        sub     QWORD PTR [rbx+24], 1
        add     rsp, 8
        mov     rax, rbp
        pop     rbx
        pop     rbp
        ret
.L215:
        test    r8, r8
        je      .L210
        movsx   rax, DWORD PTR [r8+8]
        xor     edx, edx
        div     rdi
        cmp     r9, rdx
        je      .L207
        mov     QWORD PTR [r10+rdx*8], rcx
        mov     rax, QWORD PTR [r11]
.L206:
        lea     rdx, [rbx+16]
        cmp     rax, rdx
        je      .L216
.L208:
        mov     QWORD PTR [r11], 0
        jmp     .L207
.L210:
        mov     rax, rcx
        jmp     .L206
.L216:
        mov     QWORD PTR [rbx+16], r8
        jmp     .L208
counting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&):
        push    rbp
        push    rbx
        mov     rbp, rdi
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+16]
        test    rbx, rbx
        jne     .L218
        jmp     .L217
.L220:
        mov     rbx, QWORD PTR [rbx]
        test    rbx, rbx
        je      .L217
.L218:
        mov     edi, DWORD PTR [rbx+8]
        call    do_check(int)
        test    al, al
        je      .L220
        mov     rsi, rbx
        mov     rdi, rbp
        call    std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .L218
.L217:
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret
noncounting(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&):
        push    rbp
        push    rbx
        mov     rbp, rdi
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+16]
        test    rbx, rbx
        jne     .L229
        jmp     .L228
.L231:
        mov     rbx, QWORD PTR [rbx]
        test    rbx, rbx
        je      .L228
.L229:
        mov     edi, DWORD PTR [rbx+8]
        call    do_check(int)
        test    al, al
        je      .L231
        mov     rsi, rbx
        mov     rdi, rbp
        call    std::_Hashtable<int, int, std::allocator<int>, std::__detail::_Identity, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, true, true> >::erase(std::__detail::_Node_const_iterator<int, true, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .L229
.L228:
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret
std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>):
        push    rbp
        push    rbx
        mov     rbx, rdi
        xor     edx, edx
        sub     rsp, 8
        movsx   rax, DWORD PTR [rsi+8]
        mov     rdi, QWORD PTR [rdi+8]
        mov     r10, QWORD PTR [rbx]
        div     rdi
        lea     r11, [r10+rdx*8]
        mov     r9, rdx
        mov     rax, QWORD PTR [r11]
        mov     rcx, rax
        jmp     .L240
.L245:
        mov     rcx, rdx
.L240:
        mov     rdx, QWORD PTR [rcx]
        cmp     rsi, rdx
        jne     .L245
        cmp     rax, rcx
        mov     r8, QWORD PTR [rsi]
        je      .L251
        test    r8, r8
        je      .L243
        movsx   rax, DWORD PTR [r8+8]
        xor     edx, edx
        div     rdi
        cmp     r9, rdx
        je      .L243
        mov     QWORD PTR [r10+rdx*8], rcx
.L243:
        mov     QWORD PTR [rcx], r8
        mov     rbp, QWORD PTR [rsi]
        mov     rdi, rsi
        call    operator delete(void*)
        sub     QWORD PTR [rbx+24], 1
        add     rsp, 8
        mov     rax, rbp
        pop     rbx
        pop     rbp
        ret
.L251:
        test    r8, r8
        je      .L246
        movsx   rax, DWORD PTR [r8+8]
        xor     edx, edx
        div     rdi
        cmp     r9, rdx
        je      .L243
        mov     QWORD PTR [r10+rdx*8], rcx
        mov     rax, QWORD PTR [r11]
.L242:
        lea     rdx, [rbx+16]
        cmp     rax, rdx
        je      .L252
.L244:
        mov     QWORD PTR [r11], 0
        jmp     .L243
.L246:
        mov     rax, rcx
        jmp     .L242
.L252:
        mov     QWORD PTR [rbx+16], r8
        jmp     .L244
counting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&):
        push    r13
        push    r12
        mov     r13, rdi
        push    rbp
        push    rbx
        movabs  r12, -4294967296
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+16]
        test    rbx, rbx
        jne     .L254
        jmp     .L253
.L256:
        mov     rbx, QWORD PTR [rbx]
        test    rbx, rbx
        je      .L253
.L254:
        mov     eax, DWORD PTR [rbx+8]
        and     rbp, r12
        mov     rsi, QWORD PTR [rbx+16]
        or      rbp, rax
        mov     edi, ebp
        call    do_check(std::pair<int, long>)
        test    al, al
        je      .L256
        mov     rsi, rbx
        mov     rdi, r13
        call    std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .L254
.L253:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
noncounting(std::unordered_map<int, long, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, long> > >&):
        push    r13
        push    r12
        mov     r13, rdi
        push    rbp
        push    rbx
        movabs  r12, -4294967296
        sub     rsp, 8
        mov     rbx, QWORD PTR [rdi+16]
        test    rbx, rbx
        jne     .L265
        jmp     .L264
.L267:
        mov     rbx, QWORD PTR [rbx]
        test    rbx, rbx
        je      .L264
.L265:
        mov     eax, DWORD PTR [rbx+8]
        and     rbp, r12
        mov     rsi, QWORD PTR [rbx+16]
        or      rbp, rax
        mov     edi, ebp
        call    do_check(std::pair<int, long>)
        test    al, al
        je      .L267
        mov     rsi, rbx
        mov     rdi, r13
        call    std::_Hashtable<int, std::pair<int const, long>, std::allocator<std::pair<int const, long> >, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true> >::erase(std::__detail::_Node_const_iterator<std::pair<int const, long>, false, false>)
        mov     rbx, rax
        test    rbx, rbx
        jne     .L265
.L264:
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret

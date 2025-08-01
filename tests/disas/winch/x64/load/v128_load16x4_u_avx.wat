;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx=true" ]

(module
  (memory (data "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a0\7f"))

  (func (export "v128.load16x4_u") (result v128) (v128.load16x4_u (i32.const 0)))
)
;; wasm[0]::function[0]:
;;       pushq   %rbp
;;       movq    %rsp, %rbp
;;       movq    8(%rdi), %r11
;;       movq    0x10(%r11), %r11
;;       addq    $0x10, %r11
;;       cmpq    %rsp, %r11
;;       ja      0x49
;;   1c: movq    %rdi, %r14
;;       subq    $0x10, %rsp
;;       movq    %rdi, 8(%rsp)
;;       movq    %rsi, (%rsp)
;;       movl    $0, %eax
;;       movq    0x38(%r14), %rcx
;;       addq    %rax, %rcx
;;       vpmovzxwd (%rcx), %xmm0
;;       addq    $0x10, %rsp
;;       popq    %rbp
;;       retq
;;   49: ud2

;;! target = "x86_64"
;;! test = "winch"
;;! flags = "-Wepoch-interruption=y"

(module
  (func (export "run")))
;; wasm[0]::function[0]:
;;       pushq   %rbp
;;       movq    %rsp, %rbp
;;       movq    8(%rdi), %r11
;;       movq    0x10(%r11), %r11
;;       addq    $0x10, %r11
;;       cmpq    %rsp, %r11
;;       ja      0x5d
;;   1c: movq    %rdi, %r14
;;       subq    $0x10, %rsp
;;       movq    %rdi, 8(%rsp)
;;       movq    %rsi, (%rsp)
;;       movq    0x18(%r14), %rdx
;;       movq    (%rdx), %rdx
;;       movq    8(%r14), %rcx
;;       movq    8(%rcx), %rcx
;;       cmpq    %rcx, %rdx
;;       jb      0x54
;;   47: movq    %r14, %rdi
;;       callq   0x12d
;;       movq    8(%rsp), %r14
;;       addq    $0x10, %rsp
;;       popq    %rbp
;;       retq
;;   5d: ud2

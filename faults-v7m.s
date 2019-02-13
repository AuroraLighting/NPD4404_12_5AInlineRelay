//------------------------------------------------------------------------------
// @file hal/micro/cortexm3/faults-v7m.s79
// @brief PRIV
// 
//
// Copyright 2016 Silicon Laboratories, Inc. All rights reserved.           *80*
//------------------------------------------------------------------------------

#include "../compiler/asm.h"

        __IMPORT__ halInternalCrashHandler
        __IMPORT__ halInternalSysReset

// define the values the link register can have on entering an exception
__EQU__(EXC_RETURN_HANDLER_MSP, 0xFFFFFFF1)
__EQU__(EXC_RETURN_THREAD_MSP,  0xFFFFFFF9)
__EQU__(EXC_RETURN_THREAD_PSP,  0xFFFFFFFD)

// define stack bytes needed by halCrashHandler()
__EQU__(CRASH_STACK_SIZE, 64)

//------------------------------------------------------------------------------
//
// Various types of crashes generate NMIs, hard, bus, memory, usage and debug 
// monitor faults that vector to the routines defined here. 
//
// Although all of these could vector directly to the common fault handler,
// each is given its own entry point to allow setting a breakpoint for a 
// particular type of crash.
//
//------------------------------------------------------------------------------


#ifndef EMBER_INTERRUPT_TEST
        __CODE__
        __THUMB__
        __EXPORT__ halNmiIsr
halNmiIsr:
        b.w fault
#endif


#ifndef EMBER_ACCESS_TEST
        __CODE__
        __THUMB__
        __EXPORT__ halHardFaultIsr
halHardFaultIsr:
        b.w fault

        __CODE__
        __THUMB__
        __EXPORT__ halBusFaultIsr
halBusFaultIsr:
        b.w fault

        __CODE__
        __THUMB__
        __EXPORT__ halMemoryFaultIsr
halMemoryFaultIsr:
        b.w fault

        __CODE__
        __THUMB__
        __EXPORT__ halUsageFaultIsr
halUsageFaultIsr:
        b.w fault
#endif

        __CODE__
        __THUMB__
        __EXPORT__ halDebugMonitorIsr
halDebugMonitorIsr:
        b.w fault

        __CODE__
        __THUMB__
        __EXPORT__ uninitializedIsr
uninitializedIsr:
        b.w fault


//------------------------------------------------------------------------------
// Common fault handler prolog processing
//
//   determines which of the three possible EXC_RETURN values is in lr,
//   then uses lr to save processor registers r0-r12 to the crash info area
//
//   restores lr's value, and then saves lr, msp and psp to the crash info area
//
//   checks the stack pointer to see if it is valid and won't overwrite the crash
//   info area - if needed, resets the stack pointer to the top of the stack
//   
//   calls halInternalCrashHandler() to continue saving crash data. This 
//   C function can finish crash processing without risking further faults.
//   It returns the fault reason, and this is passed to halInternalSysReset() 
//   that forces a processor reset.
//
//------------------------------------------------------------------------------
        __CODE__
        __THUMB__
        __EXPORT__ fault
fault:
        cpsid   i               // in case the fault priority is low
        tst     lr, #8          // test EXC_RETURN for handler vs thread mode
        beq.n   fault_handler_msp
        tst     lr, #4          // thread mode: test for msp versus psp
        beq.n   fault_thread_msp

fault_thread_psp:
        ldr     lr, =__BEGIN_RESETINFO__(4)
        stmia.w lr!, {r0-r12}
        ldr     r0, =EXC_RETURN_THREAD_PSP
        b.n     fault_continue

fault_handler_msp:
        ldr     lr, =__BEGIN_RESETINFO__(4)
        stmia.w lr!, {r0-r12}
        ldr     r0, =EXC_RETURN_HANDLER_MSP
        b.n     fault_continue

fault_thread_msp:
        ldr     lr, =__BEGIN_RESETINFO__(4)
        stmia.w lr!, {r0-r12}
        ldr     r0, =EXC_RETURN_THREAD_MSP
//        b.n     fault_continue

fault_continue:
        mov     r1, sp
        mrs     r2, PSP
        stm     lr, {r0-r2}     // save lr, msp and psp
        mov     lr, r0          // restore lr

fault_check_sp:
        //  make sure that the current stack pointer is within the minimum region
        //  that must be occupied by the stack and that there is some headroom
        //  for the crash handler's stack.
        ldr     r0, =__BEGIN_STACK__(CRASH_STACK_SIZE)
        ldr     r4, =__END_STACK__(0)
        cmp     sp, r0
        blo.n   fault_fix_sp
        // compare to make sure SP otherwise looks valid
        cmp     sp, r4
        blo.n   fault_sp_okay
fault_fix_sp:
        msr     msp, r4
fault_sp_okay:
        bl.w    halInternalCrashHandler // saves rest of data, returns reason
        msr     msp, r4                 // set sp to top of stack segment
        bl.w    halInternalSysReset     // call with reset reason in R0     

        __END__

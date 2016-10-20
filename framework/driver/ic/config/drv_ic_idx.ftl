config DRV_IC_INSTANCES_NUMBER_GT_${INSTANCE+1}
    depends on USE_DRV_IC 
    bool
<#if INSTANCE != 0>
	default n if DRV_IC_INSTANCES_NUMBER_GT_${INSTANCE} = n     
</#if>	
	default n if DRV_IC_INSTANCES_NUMBER = ${INSTANCE+1}
	default y
	
config DRV_IC_INST_IDX${INSTANCE}
    depends on USE_DRV_IC 
<#if INSTANCE != 0>
	             && DRV_IC_INSTANCES_NUMBER_GT_${INSTANCE}
</#if>
    bool "IC Driver Instance ${INSTANCE}"
    default y
    ---help---
    IDH_HTML_DRV_IC_INSTANCES_NUMBER
    ---endhelp---

ifblock DRV_IC_INST_IDX${INSTANCE}

config DRV_IC_PERIPHERAL_ID_IDX${INSTANCE}
    string "IC module ID"
    range IC_MODULE_ID
    default "IC_ID_1"
    ---help---
    IDH_HTML_IC_MODULE_ID
    ---endhelp---
    
config DRV_IC_INTERRUPT_SOURCE_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE
    range INT_SOURCE
    default "INT_SOURCE_INPUT_CAPTURE_1" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1"
    default "INT_SOURCE_INPUT_CAPTURE_2" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2"
    default "INT_SOURCE_INPUT_CAPTURE_3" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3"
    default "INT_SOURCE_INPUT_CAPTURE_4" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4"
    default "INT_SOURCE_INPUT_CAPTURE_5" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_5"
    default "INT_SOURCE_INPUT_CAPTURE_6" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_6"
    default "INT_SOURCE_INPUT_CAPTURE_7" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_7"
    default "INT_SOURCE_INPUT_CAPTURE_8" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_8"
    default "INT_SOURCE_INPUT_CAPTURE_9" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_9"
    default "INT_SOURCE_INPUT_CAPTURE_10" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_10"
    default "INT_SOURCE_INPUT_CAPTURE_11" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_11"
    default "INT_SOURCE_INPUT_CAPTURE_12" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_12"
    default "INT_SOURCE_INPUT_CAPTURE_13" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_13"
    default "INT_SOURCE_INPUT_CAPTURE_14" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_14"
    default "INT_SOURCE_INPUT_CAPTURE_15" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_15"
    default "INT_SOURCE_INPUT_CAPTURE_16" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_16"
    
    ---help---
      IDH_HTML_INT_SOURCE
    ---endhelp---
    
config DRV_IC_ERR_INTERRUPT_SOURCE_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    range INT_SOURCE
    default "INT_SOURCE_INPUT_CAPTURE_1_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1"
    default "INT_SOURCE_INPUT_CAPTURE_2_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2"
    default "INT_SOURCE_INPUT_CAPTURE_3_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3"
    default "INT_SOURCE_INPUT_CAPTURE_4_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4"
    default "INT_SOURCE_INPUT_CAPTURE_5_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_5"
    default "INT_SOURCE_INPUT_CAPTURE_6_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_6"
    default "INT_SOURCE_INPUT_CAPTURE_7_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_7"
    default "INT_SOURCE_INPUT_CAPTURE_8_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_8"
    default "INT_SOURCE_INPUT_CAPTURE_9_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_9"
    default "INT_SOURCE_INPUT_CAPTURE_10_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_10"
    default "INT_SOURCE_INPUT_CAPTURE_11_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_11"
    default "INT_SOURCE_INPUT_CAPTURE_12_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_12"
    default "INT_SOURCE_INPUT_CAPTURE_13_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_13"
    default "INT_SOURCE_INPUT_CAPTURE_14_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_14"
    default "INT_SOURCE_INPUT_CAPTURE_15_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_15"
    default "INT_SOURCE_INPUT_CAPTURE_16_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_16"
    ---help---
      IDH_HTML_INT_SOURCE
    ---endhelp---

config DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE
    range INT_VECTOR
    default "INT_VECTOR_IC1" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1"
    default "INT_VECTOR_IC2" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2"
    default "INT_VECTOR_IC3" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3"
    default "INT_VECTOR_IC4" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4"
    default "INT_VECTOR_IC5" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_5"
    default "INT_VECTOR_IC6" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_6"
    default "INT_VECTOR_IC7" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_7"
    default "INT_VECTOR_IC8" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_8"
    default "INT_VECTOR_IC9" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_9"
    default "INT_VECTOR_IC10" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_10"
    default "INT_VECTOR_IC11" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_11"
    default "INT_VECTOR_IC12" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_12"
    default "INT_VECTOR_IC13" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_13"
    default "INT_VECTOR_IC14" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_14"
    default "INT_VECTOR_IC15" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_15"
    default "INT_VECTOR_IC16" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_16"
    ---help---
      IDH_HTML_INT_VECTOR
    ---endhelp---
    
config DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    range INT_VECTOR
    default "INT_VECTOR_IC1_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1"
    default "INT_VECTOR_IC2_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2"
    default "INT_VECTOR_IC3_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3"
    default "INT_VECTOR_IC4_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4"
    default "INT_VECTOR_IC5_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_5"
    default "INT_VECTOR_IC6_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_6"
    default "INT_VECTOR_IC7_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_7"
    default "INT_VECTOR_IC8_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_8"
    default "INT_VECTOR_IC9_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_9"
    default "INT_VECTOR_IC10_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_10"
    default "INT_VECTOR_IC11_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_11"
    default "INT_VECTOR_IC12_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_12"
    default "INT_VECTOR_IC13_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_13"
    default "INT_VECTOR_IC14_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_14"
    default "INT_VECTOR_IC15_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_15"
    default "INT_VECTOR_IC16_ERROR" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_16"
    ---help---
      IDH_HTML_INT_VECTOR
    ---endhelp---
    
config DRV_IC_INT_PRIORITY_IDX${INSTANCE}
    string "Interrupt Priority"
    depends on DRV_IC_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_IC_INT_SUB_PRIORITY_IDX${INSTANCE}
    string "Interrupt Sub-priority"
    depends on DRV_IC_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---
    
config DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE}
    string "Error Interrupt Priority"
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_IC_ERR_INT_SUB_PRIORITY_IDX${INSTANCE}
    string "Error Interrupt Sub-priority"
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---
    
config DRV_IC_INT_PRIO_NUM_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE
    default "0" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_IC_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"

config DRV_IC_ERR_INT_PRIO_NUM_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    default "0" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_IC_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"
    
config DRV_IC_ISR_VECTOR_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE
    default "_INPUT_CAPTURE_1_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC1"
    default "_INPUT_CAPTURE_2_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC2"
    default "_INPUT_CAPTURE_3_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC3"
    default "_INPUT_CAPTURE_4_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC4"
    default "_INPUT_CAPTURE_5_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC5"
    default "_INPUT_CAPTURE_6_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC6"
    default "_INPUT_CAPTURE_7_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC7"
    default "_INPUT_CAPTURE_8_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC8"
    default "_INPUT_CAPTURE_9_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC9"
    default "_INPUT_CAPTURE_10_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC10"
    default "_INPUT_CAPTURE_11_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC11"
    default "_INPUT_CAPTURE_12_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC12"
    default "_INPUT_CAPTURE_13_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC13"
    default "_INPUT_CAPTURE_14_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC14"
    default "_INPUT_CAPTURE_15_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC15"
    default "_INPUT_CAPTURE_16_VECTOR" if DRV_IC_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC16"

config DRV_IC_ERR_ISR_VECTOR_IDX${INSTANCE}
    string
    depends on DRV_IC_INTERRUPT_MODE && (PIC32MZ || PIC32WK)
    default "_INPUT_CAPTURE_1_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC1_ERROR"
    default "_INPUT_CAPTURE_2_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC2_ERROR"
    default "_INPUT_CAPTURE_3_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC3_ERROR"
    default "_INPUT_CAPTURE_4_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC4_ERROR"
    default "_INPUT_CAPTURE_5_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC5_ERROR"
    default "_INPUT_CAPTURE_6_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC6_ERROR"
    default "_INPUT_CAPTURE_7_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC7_ERROR"
    default "_INPUT_CAPTURE_8_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC8_ERROR"
    default "_INPUT_CAPTURE_9_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC9_ERROR"
    default "_INPUT_CAPTURE_10_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC10_ERROR"
    default "_INPUT_CAPTURE_11_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC11_ERROR"
    default "_INPUT_CAPTURE_12_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC12_ERROR"
    default "_INPUT_CAPTURE_13_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC13_ERROR"
    default "_INPUT_CAPTURE_14_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC14_ERROR"
    default "_INPUT_CAPTURE_15_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC15_ERROR"
    default "_INPUT_CAPTURE_16_ERROR_VECTOR" if DRV_IC_ERR_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_IC16_ERROR"

ifblock DRV_IC_DRIVER_MODE = "STATIC"

config DRV_IC_INPUT_CAPTURE_MODES_IDX${INSTANCE}
    string "IC Modes"
    range IC_INPUT_CAPTURE_MODES
    default "IC_INPUT_CAPTURE_DISABLE_MODE"
    ---help---
      IDH_HTML_IC_INPUT_CAPTURE_MODES
    ---endhelp---
    
config DRV_IC_BUFFER_SIZE_IDX${INSTANCE}
    string "IC Buffer Size"
    range IC_BUFFER_SIZE
    default "IC_BUFFER_SIZE_16BIT"
    ---help---
      IDH_HTML_IC_BUFFER_SIZE
    ---endhelp---

config DRV_IC_EDGE_TYPES_IDX${INSTANCE}
    string "IC Edge Type"
    range IC_EDGE_TYPES
    default "IC_EDGE_RISING"
    ---help---
      IDH_HTML_IC_EDGE_TYPES
    ---endhelp---

config DRV_IC_TIMERS_IDX${INSTANCE}
    string "IC Timebase Timer"
	depends on !DRV_IC_ALTERNATE_TIMERS_SELECTION_IDX${INSTANCE}
    range IC_TIMERS
    default "IC_TIMER_TMR2"
    ---help---
      IDH_HTML_IC_TIMERS
    ---endhelp---
config USE_DRV_TIMER_2_ID${INSTANCE}
    bool
    depends on USE_DRV_IC
    default y if DRV_IC_TIMERS_IDX${INSTANCE} = "IC_TIMER_TMR2"
    default n if DRV_IC_TIMERS_IDX${INSTANCE} = "IC_TIMER_TMR3"
config USE_DRV_TIMER_3_ID${INSTANCE}
    bool
    depends on USE_DRV_IC
    default y if DRV_IC_TIMERS_IDX${INSTANCE} = "IC_TIMER_TMR3"
    default n if DRV_IC_TIMERS_IDX${INSTANCE} = "IC_TIMER_TMR2"

config DRV_IC_ALTERNATE_TIMERS_SELECTION_IDX${INSTANCE}
    bool "Use alternate timer"
    depends on PIC32MZ || PIC32MK || PIC32WK
    default n	

config DRV_IC_ALTERNATE_TIMERS_IDX${INSTANCE}
    string "Alternate Timer"
    depends on DRV_IC_ALTERNATE_TIMERS_SELECTION_IDX${INSTANCE}	
    range IC_ALT_TIMERS
	default "IC_ALT_TIMER_TMR5" if (DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2") && PIC32WK
	default "IC_ALT_TIMER_TMR7" if (DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4") && PIC32WK
    default "IC_ALT_TIMER_TMR4" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_1" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_2" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_3"
    default "IC_ALT_TIMER_TMR2" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_4" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_5" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_6" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_13" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_14" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_15" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_16"
    default "IC_ALT_TIMER_TMR6" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_7" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_8" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_9"
    default "IC_ALT_TIMER_TMR8" if DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_10" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_11" || DRV_IC_PERIPHERAL_ID_IDX${INSTANCE} = "IC_ID_12"	

comment "Configure Timer driver for the selected instance of timer"

config DRV_IC_EVENTS_PER_INTERRUPT_IDX${INSTANCE}
    string "IC Events per Interrupt"
    range IC_EVENTS_PER_INTERRUPT
    default "IC_INTERRUPT_ON_EVERY_CAPTURE_EVENT"
    ---help---
      IDH_HTML_IC_EVENTS_PER_INTERRUPT
    ---endhelp---

endif
endif

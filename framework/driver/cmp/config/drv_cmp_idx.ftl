config DRV_CMP_INSTANCES_NUMBER_GT_${INSTANCE+1}
    bool
    depends on USE_DRV_CMP
<#if INSTANCE != 0>
	default n if DRV_CMP_INSTANCES_NUMBER_GT_${INSTANCE} = n     
</#if>	
	default n if DRV_CMP_INSTANCES_NUMBER = ${INSTANCE+1}
	default y
	
config DRV_CMP_INST_IDX${INSTANCE}
    depends on USE_DRV_CMP 
<#if INSTANCE != 0>
	             && DRV_CMP_INSTANCES_NUMBER_GT_${INSTANCE}
</#if>
    bool "CMP Driver Instance ${INSTANCE}"
    default y
    ---help---
    IDH_HTML_DRV_CMP_INSTANCES_NUMBER
    ---endhelp---

ifblock DRV_CMP_INST_IDX${INSTANCE}

config DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE}
    string "CMP module ID"
    depends on USE_DRV_CMP
    range CMP_MODULE_ID
    default "CMP_ID_1"
    ---help---
    IDH_HTML_CMP_MODULE_ID
    ---endhelp---
    
config DRV_CMP_INTERRUPT_SOURCE_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    range INT_SOURCE
    default "INT_SOURCE_COMPARATOR_1" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1"
    default "INT_SOURCE_COMPARATOR_2" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2"
    default "INT_SOURCE_COMPARATOR_3" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" 
    default "INT_SOURCE_COMPARATOR_4" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4"
    default "INT_SOURCE_COMPARATOR_5" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" 	
    ---help---
      IDH_HTML_INT_SOURCE
    ---endhelp---

config DRV_CMP_INTERRUPT_EVENT_IDX${INSTANCE}
    string "Interrupt Event"
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    range CMP_INTERRUPT_EVENT
    default "CMP_INTERRUPT_GENERATION_LOW_TO_HIGH"

config DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    range INT_VECTOR
    default "INT_VECTOR_CMP1" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1"
    default "INT_VECTOR_CMP2" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2"
    default "INT_VECTOR_CMP3" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3"
    default "INT_VECTOR_CMP4" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4"
    default "INT_VECTOR_CMP5" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5"
    ---help---
      IDH_HTML_INT_VECTOR
    ---endhelp---
    
config DRV_CMP_INT_PRIORITY_IDX${INSTANCE}
    string "Interrupt Priority"
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_CMP_INT_SUB_PRIORITY_IDX${INSTANCE}
    string "Interrupt Sub-priority"
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---
        
config DRV_CMP_INT_PRIO_NUM_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    default "0" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_CMP_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"
   
config DRV_CMP_ISR_VECTOR_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    depends on DRV_CMP_INTERRUPT_MODE
    default "_COMPARATOR_1_VECTOR" if DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_CMP1"
    default "_COMPARATOR_2_VECTOR" if DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_CMP2"
    default "_COMPARATOR_3_VECTOR" if DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_CMP3"
    default "_COMPARATOR_4_VECTOR" if DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_CMP4"
    default "_COMPARATOR_5_VECTOR" if DRV_CMP_INTERRUPT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_CMP5"

ifblock DRV_CMP_DRIVER_MODE = "STATIC"

config DRV_CMP_OUTPUT_ENABLE_IDX${INSTANCE}
    bool "Comparator Output Enable?"
    depends on USE_DRV_CMP
    default n
    ---help---
    IDH_HTML_PLIB_CMP_OutputEnable_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_OUTPUT_DIGITAL_FILTER_IDX${INSTANCE}
    bool "Comparator Output Digital Filter Enable?"
    depends on USE_DRV_CMP && PIC32MK
    default n
    ---help---
    IDH_HTML_PLIB_CMP_ComparatorOutputDigitalFilterEnable_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_OUTPUT_DIGITAL_FILTER_CLOCK_IDX${INSTANCE}
    string "Digital Filter Clock Source"
    depends on USE_DRV_CMP && DRV_CMP_OUTPUT_DIGITAL_FILTER_IDX${INSTANCE}
    range CMP_OUTPUT_FILTER_CLK_SOURCE
    default "CMP_OUTPUT_FILTER_CLK_SYSCLK"
    ---help---
    IDH_HTML_PLIB_CMP_ComparatorOutputDigitalFilterClkSetup_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_OUTPUT_DIGITAL_FILTER_CLOCK_DIV_IDX${INSTANCE}
    string "Digital Filter Clock Divide Ratio"
    depends on USE_DRV_CMP && DRV_CMP_OUTPUT_DIGITAL_FILTER_IDX${INSTANCE}
    range CMP_OUTPUT_FILTER_CLK_DIV
    default "CMP_OUTPUT_FILTER_CLK_DIV_1"
    ---help---
    IDH_HTML_PLIB_CMP_ComparatorOutputDigitalFilterClkSetup_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_USE_OUTPUT_PIN_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    default DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} if DRV_CMP_OUTPUT_ENABLE_IDX${INSTANCE}

config DRV_CMP_OUTPUT_INVERT_IDX${INSTANCE}
    bool "Comparator Output Invert?"    
    depends on USE_DRV_CMP
    default n
    ---help---
    IDH_HTML_PLIB_CMP_OutputInvertEnable_CMP_MODULE
    ---endhelp---

config DRV_CMP_OPAMP_ENABLE_IDX${INSTANCE}
    bool "Opamp Mode Enable?"
    depends on USE_DRV_CMP && PIC32MK
    depends on DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} != "CMP_ID_4"
    default n
    ---help---
    IDH_HTML_PLIB_CMP_PLIB_CMP_OpAmpEnable_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_OPAMP_OUTPUT_ENABLE_IDX${INSTANCE}
    bool "Opamp Output Enable?"
    depends on USE_DRV_CMP && PIC32MK && DRV_CMP_OPAMP_ENABLE_IDX${INSTANCE}
    default n
    ---help---
    IDH_HTML_PLIB_CMP_OpAmpOutputEnable_CMP_MODULE_ID
    ---endhelp---

config DRV_CMP_USE_OA_OUTPUT_PIN_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP && DRV_CMP_OPAMP_ENABLE_IDX${INSTANCE}
    default DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} if DRV_CMP_OPAMP_OUTPUT_ENABLE_IDX${INSTANCE}

config DRV_CMP_INVERTING_INPUT_IDX${INSTANCE}
    string "Inverting Input Channel"
    depends on USE_DRV_CMP
    range CMP_INVERTING_INPUT
    default "CMP_INVERTING_INPUT_1" if PIC32MK
    default "CMP_INPUT_C2IN_POSITIVE"
    ---help---
    IDH_HTML_CMP_INVERTING_INPUT
    ---endhelp---

config DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE}
    string "NonInverting Input Channel"
    depends on USE_DRV_CMP
    range CMP_NON_INVERTING_INPUT
    default "CMP_NON_INVERTING_INPUT_1" if PIC32MK
    default "CMP_INPUT_INTERNAL_CVREF"
    ---help---
    IDH_HTML_CMP_NON_INVERTING_INPUT
    ---endhelp---

config DRV_CMP_NONINVPIN_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    range DRV_CMP_PINS
    default "C1INA" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_EXTERNAL_PIN_A" 
    default "C2INA" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_EXTERNAL_PIN_A" 
    default "C3INA" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_EXTERNAL_PIN_A" 
    default "C1INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_EXTERNAL_POSITIVE_PIN" 
    default "C2INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_EXTERNAL_POSITIVE_PIN" 
    default "C1IN1+" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_1"
    default "C2IN1+" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_1" 
    default "C3IN1+" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_1" 
    default "C4IN1+" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_1" 
    default "C5IN1+" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" && DRV_CMP_NON_INVERTING_INPUT_IDX${INSTANCE} = "CMP_NON_INVERTING_INPUT_1" 
    default "NONE"

config DRV_CMP_INVPIN_IDX${INSTANCE}
    string
    depends on USE_DRV_CMP
    range DRV_CMP_PINS
    default "C1INB" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_B" 
    default "C1INC" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_C" 
    default "C1IND" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_D" 
    default "C2INB" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_B" 
    default "C2INC" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_C" 
    default "C2IND" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_D" 
    default "C3INB" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_B" 
    default "C3INC" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_C" 
    default "C3IND" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_PIN_D" 
    default "C1INM" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_NEGATIVE_PIN" 
    default "C1INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_POSITIVE_PIN" 
    default "C2INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_OTHER_MODULE_EXTERNAL_POSITIVE_PIN" 
    default "C2INM" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_NEGATIVE_PIN" 
    default "C2INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_EXTERNAL_POSITIVE_PIN" 
    default "C1INP" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_OTHER_MODULE_EXTERNAL_POSITIVE_PIN" 
    default "C1IN1-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_1"
    default "C1IN2-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_2"
    default "C1IN3-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_3"
    default "C1IN4-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_1" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_4"
    default "C2IN1-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_1"
    default "C2IN2-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_2"
    default "C2IN3-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_3"
    default "C2IN4-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_2" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_4"
    default "C3IN1-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_1"
    default "C3IN2-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_2"
    default "C3IN3-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_3"
    default "C3IN4-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_3" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_4"
    default "C4IN1-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_1"
    default "C4IN2-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_2"
    default "C4IN3-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_3"
    default "C4IN4-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_4" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_4"
    default "C5IN1-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_1"
    default "C5IN2-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_2"
    default "C5IN3-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_3"
    default "C5IN4-" if DRV_CMP_PERIPHERAL_ID_IDX${INSTANCE} = "CMP_ID_5" && DRV_CMP_INVERTING_INPUT_IDX${INSTANCE} = "CMP_INVERTING_INPUT_4"	
    default "NONE"

endif

endif

//******************************************************************************
// File: libq_q31_Abs_q31.c
//
// Description: Creates a saturated Absolute value.
//
//******************************************************************************

#include "libq_C.h"


//******************************************************************************
//
// libq_q31_Abs_q31()
//
// Description:
//   Creates a saturated Absolute value.  It takes the absolute value of the
//   32-bit 2s-complement fractional input with saturation. The saturation is
//   for handling the case where taking the absolute value of MINFRACT32 is
//   greater than MAXFRACT32, or the allowable range of 32-bit values.
//   This function relates to the ETSI L_abs function.
//
// Arguments:
//   q31 a
//     [in] input argument
//
// Return Value:
//   q31 result
//     [return]  abs(input) <= MAXFRACT32
//
//*****************************************************************************
q31 libq_q31_Abs_q31(q31 a)
{
  q31 result;                   /* Value returned */

  /* If input is a positive 2's complement value then,
   * simply take the input 2's complement value */
  if (a >= (q31)0)
  {
    result = a;
  }
  /* Else the Input is a Negative value, so check for min value (-1) */
  else
  {   
    /* If not the min value (-1), just negate the input for absolute value */ 
    if (a != (q31)MINFRACT32)
    {
      result = (q31)(-a);
    }
    /* Else it was the min value (-1), so saturate to max value (1) */
    else
    {
      result = (q31)MAXFRACT32;
    }
  }
  return (result);
}

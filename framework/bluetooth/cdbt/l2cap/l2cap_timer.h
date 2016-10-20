/*******************************************************************************
* Contains proprietary and confidential information of SEARAN LLC.
* May not be used or disclosed to any other party except in accordance
* with a license from SEARAN LLC.
* Copyright (c) 2011-2016 SEARAN LLC. All Rights Reserved.
*
* SEARAN LLC is the exclusive licensee and developer of dotstack with
* all its modifications and enhancements.
*
* Contains proprietary and confidential information of CandleDragon and
* may not be used or disclosed to any other party except in accordance
* with a license from SEARAN LLC.
* Copyright (c) 2009, 2010, 2011 CandleDragon. All Rights Reserved.
*******************************************************************************/

#ifndef __L2CAP_TIMER
#define __L2CAP_TIMER

#ifdef __cplusplus
extern "C" {
#endif

void _bt_l2cap_init_timer(void);
bt_long _bt_l2cap_get_tick_count(void);

#ifdef __cplusplus
}
#endif

#endif // __L2CAP_TIMER

%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo(
  {
      "ReceiverBIC": "PLANGB11XXX",
      "ReplacementBIC": "MISYGB2LXXX",
      "LastUpdated": "2024-02-07T14:40:47",
      "Description": "Plan International",
      "FundName": "PLAN INTERNATIONAL INC",
  	  "Field87Code": "NAME"
  }
)
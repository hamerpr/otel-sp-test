%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "ReceiverBIC": "EBURGB2LXXX",
    "ReplacementBIC": "MISYGB2LXXX",
    "LastUpdated": "2023-08-25T15:38:53",
    "Description": "Ebury Partners UK Ltd",
    "FundName": "EBURY PARTNERS UK LIMITED",
    "Field87Code": null
  },
  {
    "ReceiverBIC": "UNCFUS33XXX",
    "ReplacementBIC": "MISYGB2LXXX",
    "LastUpdated": "2023-08-24T17:10:01",
    "Description": "United Nations Childrens Fund",
    "FundName": "UNICEF",
    "Field87Code": null
  },
  {
    "ReceiverBIC": "UNDPUS33XXX",
    "ReplacementBIC": "MISYGB2LXXX",
    "LastUpdated": "2023-09-01T15:48:05",
    "Description": "United Nations Development Programme, New York",
    "FundName": "UNDP",
    "Field87Code": null
  },
  {
    "ReceiverBIC": "UNDPUS44XXX",
    "ReplacementBIC": "MISYGB2LXXX",
    "LastUpdated": "2023-09-01T15:28:07",
    "Description": "United Nations Development Programme, New York",
    "FundName": "UNDP",
    "Field87Code": null
  },
  {
      "ReceiverBIC": "PLANGB11XXX",
      "ReplacementBIC": "MISYGB2LXXX",
      "LastUpdated": "2024-02-07T14:40:47",
      "Description": "Plan International",
      "FundName": "PLAN INTERNATIONAL INC",
  	  "Field87Code": "NAME"
  }  
])
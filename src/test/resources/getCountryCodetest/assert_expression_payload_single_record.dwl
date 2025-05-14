%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo(
{
  "CountryCode3": "Z00",
  "EnglishCountryName": "Phil Test",
  "FrenchCountryName": "Émirats arabes unis (les) du Phil",
  "CountryCode2": "Z0",
  "CurrencyCode": "ZOO",
  "Region": 2,
  "NumericCode": "001",
  "CBSCountryName": "PHIL TEST"
})

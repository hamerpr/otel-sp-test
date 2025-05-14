%dw 2.0
import * from dw::test::Asserts
---
payload - "LastUpdated" must equalTo(
{
  message: "Record not found"
}
)

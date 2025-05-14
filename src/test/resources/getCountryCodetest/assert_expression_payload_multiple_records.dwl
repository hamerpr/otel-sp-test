%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "AN",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "530",
    CBSCountryName: "ANTILLES (NETHERLANDS)"
  }, 
  {
    CountryCode3: "ASM",
    EnglishCountryName: "American Samoa",
    FrenchCountryName: "",
    CountryCode2: "AS",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "016",
    CBSCountryName: "AMERICAN SAMOA"
  }, 
  {
    CountryCode3: "BES",
    EnglishCountryName: "Bonaire, Sint Eustatius and Saba",
    FrenchCountryName: "",
    CountryCode2: "BQ",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "535",
    CBSCountryName: "BONAIRE, SINT EUSTATIUS + SABA"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "CS",
    CurrencyCode: "USD",
    Region: 4,
    NumericCode: "200",
    CBSCountryName: "CZECHOSLOVAKIA, FMR"
  }, 
  {
    CountryCode3: "ECU",
    EnglishCountryName: "Ecuador",
    FrenchCountryName: "",
    CountryCode2: "EC",
    CurrencyCode: "USD",
    Region: 14,
    NumericCode: "218",
    CBSCountryName: "ECUADOR"
  }, 
  {
    CountryCode3: "FSM",
    EnglishCountryName: "Micronesia",
    FrenchCountryName: "",
    CountryCode2: "FM",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "583",
    CBSCountryName: "MICRONESIA FEDERATED STATES OF"
  }, 
  {
    CountryCode3: "GUM",
    EnglishCountryName: "Guam",
    FrenchCountryName: "",
    CountryCode2: "GU",
    CurrencyCode: "USD",
    Region: 18,
    NumericCode: "316",
    CBSCountryName: "GUAM"
  }, 
  {
    CountryCode3: "IOT",
    EnglishCountryName: "British Indian Ocean Territory",
    FrenchCountryName: "",
    CountryCode2: "IO",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "086",
    CBSCountryName: "BRITISH INDIAN OCEAN TERRITORY"
  }, 
  {
    CountryCode3: "MHL",
    EnglishCountryName: "Marshall Islands",
    FrenchCountryName: "",
    CountryCode2: "MH",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "584",
    CBSCountryName: "MARSHALL ISLANDS"
  }, 
  {
    CountryCode3: "MNP",
    EnglishCountryName: "Northern Mariana Islands",
    FrenchCountryName: "",
    CountryCode2: "MP",
    CurrencyCode: "USD",
    Region: 14,
    NumericCode: "580",
    CBSCountryName: "NORTHERN MARIANA ISLANDS"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "O",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "990",
    CBSCountryName: "OTHER"
  }, 
  {
    CountryCode3: "PRI",
    EnglishCountryName: "Puerto Rico",
    FrenchCountryName: "",
    CountryCode2: "PR",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "630",
    CBSCountryName: "PUERTO RICO"
  }, 
  {
    CountryCode3: "PLW",
    EnglishCountryName: "Palau",
    FrenchCountryName: "",
    CountryCode2: "PW",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "585",
    CBSCountryName: "PALAU"
  }, 
  {
    CountryCode3: "SLV",
    EnglishCountryName: "El Salvador",
    FrenchCountryName: "",
    CountryCode2: "SV",
    CurrencyCode: "USD",
    Region: 13,
    NumericCode: "222",
    CBSCountryName: "EL SALVADOR"
  }, 
  {
    CountryCode3: "TCA",
    EnglishCountryName: "Turks and Caicos Islands",
    FrenchCountryName: "",
    CountryCode2: "TC",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "796",
    CBSCountryName: "TURKS AND CAICOS ISLANDS"
  }, 
  {
    CountryCode3: "TLS",
    EnglishCountryName: "Timor-Leste",
    FrenchCountryName: "",
    CountryCode2: "TL",
    CurrencyCode: "USD",
    Region: 18,
    NumericCode: "626",
    CBSCountryName: "TIMOR-LESTE"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "U1",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "849",
    CBSCountryName: "US TRUST TER. PACIFIC"
  }, 
  {
    CountryCode3: "UMI",
    EnglishCountryName: "U.S. Outlying Islands",
    FrenchCountryName: "",
    CountryCode2: "UM",
    CurrencyCode: "USD",
    Region: 14,
    NumericCode: "581",
    CBSCountryName: "US MINOR OUTLAYING ISLANDS"
  }, 
  {
    CountryCode3: "USA",
    EnglishCountryName: "United States",
    FrenchCountryName: "",
    CountryCode2: "US",
    CurrencyCode: "USD",
    Region: 12,
    NumericCode: "840",
    CBSCountryName: "UNITED STATES OF AMERICA"
  }, 
  {
    CountryCode3: "VGB",
    EnglishCountryName: "British Virgin Islands",
    FrenchCountryName: "",
    CountryCode2: "VG",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "092",
    CBSCountryName: "VIRGIN ISLANDS (BRITISH)"
  }, 
  {
    CountryCode3: "VIR",
    EnglishCountryName: "U.S. Virgin Islands",
    FrenchCountryName: "",
    CountryCode2: "VI",
    CurrencyCode: "USD",
    Region: 15,
    NumericCode: "850",
    CBSCountryName: "VIRGIN ISLANDS (US)"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "XS",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "888",
    CBSCountryName: "SUPRA-NATIONAL (ISIN USE ONLY)"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "XX",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "999",
    CBSCountryName: "UNDETERMINED"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "YU",
    CurrencyCode: "USD",
    Region: 5,
    NumericCode: "891",
    CBSCountryName: "YUGOSLAVIA, FORMER"
  }, 
  {
    CountryCode3: null,
    EnglishCountryName: null,
    FrenchCountryName: null,
    CountryCode2: "Z2",
    CurrencyCode: "USD",
    Region: 23,
    NumericCode: "998",
    CBSCountryName: "OTHER INT INST"
  }
])
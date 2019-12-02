view: policies {
  sql_table_name: standardised_tables.policies ;;

  dimension: affiliate {
    type: string
    sql: ${TABLE}.affiliate ;;
  }

  dimension: affiliate_code {
    type: string
    sql: ${TABLE}.affiliate_code ;;
  }

  dimension: birth_year_owner {
    type: number
    sql: ${TABLE}.birth_year_owner ;;
  }

  dimension: cat_count {
    type: number
    sql: ${TABLE}.cat_count ;;
  }

  dimension: city_owner {
    type: string
    sql: ${TABLE}.city_owner ;;
  }

  dimension: copay {
    type: number
    sql: ${TABLE}.copay ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.created_datetime AS TIMESTAMP) ;;
  }

  dimension: dog_count {
    type: number
    sql: ${TABLE}.dog_count ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }

  dimension: excess {
    type: number
    sql: ${TABLE}.excess ;;
  }

  dimension: gwp_current {
    description: "This is GWP Current"
    label: "GWP"
    type: number
    sql: ${TABLE}.gwp_current ;;
  }

  dimension: iba_number_customer {
    type: string
    sql: ${TABLE}.iba_number_customer ;;
  }

  dimension: iba_number_policy {
    type: string
    sql: ${TABLE}.iba_number_policy ;;
  }

  dimension_group: inception {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.inception_date ;;
  }

  dimension: optional_coverage_count {
    type: number
    sql: ${TABLE}.optional_coverage_count ;;
  }

  dimension: pet_count {
    type: number
    sql: ${TABLE}.pet_count ;;
  }

  dimension: postcode_owner {
    type: string
    sql: ${TABLE}.postcode_owner ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: renewal_count {
    type: number
    sql: ${TABLE}.renewal_count ;;
  }

  dimension: sales_medium {
    type: string
    sql: ${TABLE}.sales_medium ;;
  }

  dimension: status_policy {
    type: string
    sql: ${TABLE}.status_policy ;;
  }

  dimension: title_owner {
    type: string
    sql: ${TABLE}.title_owner ;;
  }

  dimension: uuid_owner {
    type: string
    sql: ${TABLE}.uuid_owner ;;
  }

  dimension: uuid_policy {
    primary_key: yes
    type: string
    sql: ${TABLE}.uuid_policy ;;
  }

  dimension: uuid_quote {
    type: string
    sql: ${TABLE}.uuid_quote ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: conversion_rate {
    type: number
    value_format_name: percent_2
    sql:  1.00*${count}/NULLIF(${quotes.count},0);;
  }
}

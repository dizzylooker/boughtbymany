view: quotes {
  sql_table_name: standardised_tables.quotes ;;

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

  dimension: pet_count {
    type: number
    sql: ${TABLE}.pet_count ;;
  }

  dimension: postcode_owner {
    type: string
    sql: ${TABLE}.postcode_owner ;;
  }

  dimension: quote_type {
    type: string
    sql: ${TABLE}.quote_type ;;
  }

  dimension: status_quote {
    type: string
    sql: ${TABLE}.status_quote ;;
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
}

view: feefo_reviews {
  sql_table_name: standardised_tables.feefo_reviews ;;

  dimension_group: created_datetime_nps {
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
    sql: CAST(${TABLE}.created_datetime_nps AS TIMESTAMP) ;;
  }

  dimension_group: created_datetime_review {
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
    sql: CAST(${TABLE}.created_datetime_review AS TIMESTAMP) ;;
  }

  dimension: custom_questions_count {
    type: number
    sql: ${TABLE}.custom_questions_count ;;
  }

  dimension: helpful_votes {
    type: number
    sql: ${TABLE}.helpful_votes ;;
  }

  dimension: id_covea_claim {
    type: string
    sql: ${TABLE}.id_covea_claim ;;
  }

  dimension: id_feefo {
    type: string
    sql: ${TABLE}.id_feefo ;;
  }

  dimension_group: last_updated_datetime {
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
    sql: CAST(${TABLE}.last_updated_datetime AS TIMESTAMP) ;;
  }

  dimension: nps_reason {
    type: string
    sql: ${TABLE}.nps_reason ;;
  }

  dimension: nps_reason_sentiment {
    type: number
    sql: ${TABLE}.nps_reason_sentiment ;;
  }

  dimension: order_ref {
    type: string
    sql: ${TABLE}.order_ref ;;
  }

  dimension: rating_nps {
    type: number
    sql: ${TABLE}.rating_nps ;;
  }

  dimension: rating_review {
    type: number
    sql: ${TABLE}.rating_review ;;
  }

  dimension: review {
    type: string
    sql: ${TABLE}.review ;;
  }

  dimension: review_sentiment {
    type: number
    sql: ${TABLE}.review_sentiment ;;
  }

  dimension: review_type {
    type: string
    sql: ${TABLE}.review_type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_sentiment {
    type: number
    sql: ${TABLE}.title_sentiment ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: uuid_policy {
    type: string
    sql: ${TABLE}.uuid_policy ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

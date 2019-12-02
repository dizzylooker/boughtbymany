view: policies_pets {
  sql_table_name: standardised_tables.policies_pets ;;

  dimension: breed {
    type: string
    sql: ${TABLE}.breed ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: microchipped {
    type: yesno
    sql: ${TABLE}.microchipped ;;
  }

  dimension: pedigree_type {
    type: string
    sql: ${TABLE}.pedigree_type ;;
  }

  dimension: pet_age_current_days {
    type: number
    sql: ${TABLE}.pet_age_current_days ;;
  }

  dimension: pet_age_current_years {
    type: number
    sql: ${TABLE}.pet_age_current_years ;;
  }

  dimension_group: pet_date_of_birth {
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
    sql: ${TABLE}.pet_date_of_birth ;;
  }

  dimension: pet_name {
    type: string
    sql: ${TABLE}.pet_name ;;
  }

  dimension: spayed_neutered {
    type: yesno
    sql: ${TABLE}.spayed_neutered ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: uuid_pet {
    type: string
    sql: ${TABLE}.uuid_pet ;;
  }

  dimension: uuid_policy {
    type: string
    sql: ${TABLE}.uuid_policy ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [pet_name]
  }
}

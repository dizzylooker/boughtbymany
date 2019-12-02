view: service_policy_policies {
  sql_table_name: mongo.service_policy_policies ;;

  dimension: account_ref {
    type: string
    sql: ${TABLE}.account_ref ;;
  }

  dimension: affiliate_code {
    type: string
    sql: ${TABLE}.affiliate_code ;;
  }

  dimension_group: cessation {
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
    sql: ${TABLE}.cessation_date ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: data {
    hidden: yes
    sql: ${TABLE}.data ;;
  }

  dimension: deleted_from_source {
    type: yesno
    sql: ${TABLE}.deleted_from_source ;;
  }

  dimension: document_uri {
    type: string
    sql: ${TABLE}.document_uri ;;
  }

  dimension_group: inception {
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
    sql: ${TABLE}.inception_date ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: productline {
    type: string
    sql: ${TABLE}.productline ;;
  }

  dimension: productline_key {
    type: string
    sql: ${TABLE}.productline_key ;;
  }

  dimension: products {
    hidden: yes
    sql: ${TABLE}.products ;;
  }

  dimension: quote_uuid {
    type: string
    sql: ${TABLE}.quote_uuid ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension_group: refreshed {
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
    sql: ${TABLE}.refreshed_at ;;
  }

  dimension: renewal_count {
    type: number
    sql: ${TABLE}.renewal_count ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: uploaded_to_bq {
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
    sql: ${TABLE}.uploaded_to_bq_at ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: service_policy_policies__metadata {
  dimension_group: cancellation {
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
    sql: ${TABLE}.cancellation_date ;;
  }

  dimension_group: contract_end {
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
    sql: ${TABLE}.contract_end_date ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}.contract_number ;;
  }

  dimension_group: contract_start {
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
    sql: ${TABLE}.contract_start_date ;;
  }

  dimension_group: decay {
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
    sql: ${TABLE}.decay_date ;;
  }

  dimension: iba_ref {
    type: string
    sql: ${TABLE}.iba_ref ;;
  }

  dimension: incepted {
    type: yesno
    sql: ${TABLE}.incepted ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: termination_cause {
    type: string
    sql: ${TABLE}.termination_cause ;;
  }
}

view: service_policy_policies__data__policy_holders {
  dimension: address_city {
    type: string
    sql: ${TABLE}.address_city ;;
  }

  dimension: address_postcode {
    type: string
    sql: ${TABLE}.address_postcode ;;
  }

  dimension: agree_terms {
    type: yesno
    sql: ${TABLE}.agree_terms ;;
  }

  dimension: caseworker {
    type: string
    sql: ${TABLE}.caseworker ;;
  }

  dimension: dob {
    type: number
    sql: ${TABLE}.dob ;;
  }

  dimension: iba_customer_number {
    type: string
    sql: ${TABLE}.iba_customer_number ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}

view: service_policy_policies__data {
  dimension: insured_entities {
    hidden: yes
    sql: ${TABLE}.insured_entities ;;
  }

  dimension: policy {
    hidden: yes
    sql: ${TABLE}.policy ;;
  }

  dimension: policy_holders {
    hidden: yes
    sql: ${TABLE}.policy_holders ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
}

view: service_policy_policies__data__insured_entities {
  dimension: breed {
    type: string
    sql: ${TABLE}.breed ;;
  }

  dimension: breed_friendly {
    type: string
    sql: ${TABLE}.breed_friendly ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}.dob ;;
  }

  dimension: existing_conditions {
    type: string
    sql: ${TABLE}.existing_conditions ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: healthy {
    type: yesno
    sql: ${TABLE}.healthy ;;
  }

  dimension_group: inception {
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
    sql: ${TABLE}.inception_date ;;
  }

  dimension: microchip_number {
    type: string
    sql: ${TABLE}.microchip_number ;;
  }

  dimension: microchipped {
    type: yesno
    sql: ${TABLE}.microchipped ;;
  }

  dimension: pedigree {
    type: yesno
    sql: ${TABLE}.pedigree ;;
  }

  dimension: pedigree_type {
    type: string
    sql: ${TABLE}.pedigree_type ;;
  }

  dimension: pet_address_postcode {
    type: string
    sql: ${TABLE}.pet_address_postcode ;;
  }

  dimension: pet_adjective {
    type: string
    sql: ${TABLE}.pet_adjective ;;
  }

  dimension: pet_lives {
    type: string
    sql: ${TABLE}.pet_lives ;;
  }

  dimension: pet_name {
    type: string
    sql: ${TABLE}.pet_name ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension: spayed_neutered {
    type: yesno
    sql: ${TABLE}.spayed_neutered ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: service_policy_policies__data__policy {
  dimension: addons {
    type: string
    sql: ${TABLE}.addons ;;
  }

  dimension: caseworker {
    type: string
    sql: ${TABLE}.caseworker ;;
  }

  dimension_group: cessation {
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
    sql: ${TABLE}.cessation_date ;;
  }

  dimension: fixed_excess {
    type: number
    sql: ${TABLE}.fixed_excess ;;
  }

  dimension_group: inception {
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
    sql: ${TABLE}.inception_date ;;
  }

  dimension: invalid_card_details {
    type: string
    sql: ${TABLE}.invalid_card_details ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: option {
    type: string
    sql: ${TABLE}.option ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: variation {
    type: number
    sql: ${TABLE}.variation ;;
  }

  dimension: voluntary_excess {
    type: number
    sql: ${TABLE}.voluntary_excess ;;
  }
}

view: service_policy_policies__products {
  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: optional_coverages {
    hidden: yes
    sql: ${TABLE}.optional_coverages ;;
  }

  dimension: premium {
    type: number
    sql: ${TABLE}.premium ;;
  }

  dimension: price {
    hidden: yes
    sql: ${TABLE}.price ;;
  }

  dimension: pricing_key {
    type: string
    sql: ${TABLE}.pricing_key ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: variation {
    type: string
    sql: ${TABLE}.variation ;;
  }
}

view: service_policy_policies__products__price__monthly1 {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__price__monthly {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__price__annual {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__optional_coverages__price__monthly1 {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__optional_coverages__price__monthly {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__optional_coverages__price__annual {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }
}

view: service_policy_policies__products__optional_coverages {
  dimension: price {
    hidden: yes
    sql: ${TABLE}.price ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }
}

view: service_policy_policies__products__price {
  dimension: annual {
    hidden: yes
    sql: ${TABLE}.annual ;;
  }

  dimension: monthly {
    hidden: yes
    sql: ${TABLE}.monthly ;;
  }

  dimension: monthly1 {
    hidden: yes
    sql: ${TABLE}.monthly1 ;;
  }
}

view: service_policy_policies__products__optional_coverages__price {
  dimension: annual {
    hidden: yes
    sql: ${TABLE}.annual ;;
  }

  dimension: monthly {
    hidden: yes
    sql: ${TABLE}.monthly ;;
  }

  dimension: monthly1 {
    hidden: yes
    sql: ${TABLE}.monthly1 ;;
  }
}

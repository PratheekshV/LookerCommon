view: inpatient_charges_2014 {
  sql_table_name: LookerBQ.inpatient_charges_2014 ;;

  dimension: average_covered_charges {
    type: number
    sql: ${TABLE}.average_covered_charges ;;
  }

  dimension: average_medicare_payments {
    type: number
    sql: ${TABLE}.average_medicare_payments ;;
  }

  dimension: average_total_payments {
    type: number
    sql: ${TABLE}.average_total_payments ;;
  }

  dimension: drg_definition {
    type: string
    sql: ${TABLE}.drg_definition ;;
  }

  dimension: hospital_referral_region_description {
    type: string
    sql: ${TABLE}.hospital_referral_region_description ;;
  }

  dimension: provider_city {
    type: string
    sql: ${TABLE}.provider_city ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}.provider_id ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.provider_name ;;
  }

  dimension: provider_state {
    type: string
    sql: ${TABLE}.provider_state ;;
  }

  dimension: provider_street_address {
    type: string
    sql: ${TABLE}.provider_street_address ;;
  }

  dimension: provider_zipcode {
    type: number
    sql: ${TABLE}.provider_zipcode ;;
  }

  dimension: total_discharges {
    type: number
    sql: ${TABLE}.total_discharges ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_name]
  }
}

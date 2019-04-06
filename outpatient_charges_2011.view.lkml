view: outpatient_charges_2011 {
  sql_table_name: LookerBQ.outpatient_charges_2011 ;;

  dimension: apc {
    type: string
    sql: ${TABLE}.apc ;;
  }

  dimension: average_estimated_submitted_charges {
    type: number
    sql: ${TABLE}.average_estimated_submitted_charges ;;
  }

  dimension: average_total_payments {
    type: number
    sql: ${TABLE}.average_total_payments ;;
  }

  dimension: hospital_referral_region {
    type: string
    sql: ${TABLE}.hospital_referral_region ;;
  }

  dimension: outpatient_services {
    type: number
    sql: ${TABLE}.outpatient_services ;;
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

  measure: count {
    type: count
    drill_fields: [provider_name]
  }
}

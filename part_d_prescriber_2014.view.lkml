view: part_d_prescriber_2014 {
  sql_table_name: LookerBQ.part_d_prescriber_2014 ;;

  dimension: bene_count {
    type: number
    sql: ${TABLE}.bene_count ;;
  }

  dimension: bene_count_ge65 {
    type: number
    sql: ${TABLE}.bene_count_ge65 ;;
  }

  dimension: bene_count_ge65_suppress_flag {
    type: string
    sql: ${TABLE}.bene_count_ge65_suppress_flag ;;
  }

  dimension: description_flag {
    type: string
    sql: ${TABLE}.description_flag ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: ge65_suppress_flag {
    type: string
    sql: ${TABLE}.ge65_suppress_flag ;;
  }

  dimension: generic_name {
    type: string
    sql: ${TABLE}.generic_name ;;
  }

  dimension: npi {
    type: number
    sql: ${TABLE}.npi ;;
  }

  dimension: nppes_provider_city {
    type: string
    sql: ${TABLE}.nppes_provider_city ;;
  }

  dimension: nppes_provider_first_name {
    type: string
    sql: ${TABLE}.nppes_provider_first_name ;;
  }

  dimension: nppes_provider_last_org_name {
    type: string
    sql: ${TABLE}.nppes_provider_last_org_name ;;
  }

  dimension: nppes_provider_state {
    type: string
    sql: ${TABLE}.nppes_provider_state ;;
  }

  dimension: specialty_description {
    type: string
    sql: ${TABLE}.specialty_description ;;
  }

  dimension: total_claim_count {
    type: number
    sql: ${TABLE}.total_claim_count ;;
  }

  dimension: total_claim_count_ge65 {
    type: number
    sql: ${TABLE}.total_claim_count_ge65 ;;
  }

  dimension: total_day_supply {
    type: number
    sql: ${TABLE}.total_day_supply ;;
  }

  dimension: total_day_supply_ge65 {
    type: number
    sql: ${TABLE}.total_day_supply_ge65 ;;
  }

  dimension: total_drug_cost {
    type: number
    sql: ${TABLE}.total_drug_cost ;;
  }

  dimension: total_drug_cost_ge65 {
    type: number
    sql: ${TABLE}.total_drug_cost_ge65 ;;
  }

  measure: count {
    type: count
    drill_fields: [drug_name, nppes_provider_first_name, generic_name, nppes_provider_last_org_name]
  }
}

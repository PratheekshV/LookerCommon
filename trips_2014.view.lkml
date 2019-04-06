view: trips_2014 {
  sql_table_name: LookerBQ.trips_2014 ;;

  dimension: distance_between_service {
    type: number
    sql: ${TABLE}.distance_between_service ;;
  }

  dimension_group: dropoff_datetime {
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
    sql: ${TABLE}.dropoff_datetime ;;
  }

  dimension: dropoff_latitude {
    type: number
    sql: ${TABLE}.dropoff_latitude ;;
  }

  dimension: dropoff_longitude {
    type: number
    sql: ${TABLE}.dropoff_longitude ;;
  }

  dimension: ehail_fee {
    type: number
    sql: ${TABLE}.ehail_fee ;;
  }

  dimension: extra {
    type: number
    sql: ${TABLE}.extra ;;
  }

  dimension: fare_amount {
    type: number
    sql: ${TABLE}.fare_amount ;;
  }

  dimension: mta_tax {
    type: number
    sql: ${TABLE}.mta_tax ;;
  }

  dimension: passenger_count {
    type: number
    sql: ${TABLE}.passenger_count ;;
  }

  dimension: payment_type {
    type: number
    sql: ${TABLE}.payment_type ;;
  }

  dimension_group: pickup_datetime {
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
    sql: ${TABLE}.pickup_datetime ;;
  }

  dimension: pickup_latitude {
    type: number
    sql: ${TABLE}.pickup_latitude ;;
  }

  dimension: pickup_longitude {
    type: number
    sql: ${TABLE}.pickup_longitude ;;
  }

  dimension: rate_code {
    type: number
    sql: ${TABLE}.rate_code ;;
  }

  dimension: store_and_fwd_flag {
    type: string
    sql: ${TABLE}.store_and_fwd_flag ;;
  }

  dimension: time_between_service {
    type: number
    sql: ${TABLE}.time_between_service ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: tolls_amount {
    type: number
    sql: ${TABLE}.tolls_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: trip_distance {
    type: number
    sql: ${TABLE}.trip_distance ;;
  }

  dimension: trip_type {
    type: number
    sql: ${TABLE}.trip_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

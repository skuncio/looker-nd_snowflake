view: t8021_user_churning_prediction {
  sql_table_name: PUBLIC.T8021_USER_CHURNING_PREDICTION ;;

  dimension: c8021_adid {
    type: string
    sql: ${TABLE}.C8021_ADID ;;
  }

  dimension: c8021_classlabel {
    type: string
    sql: ${TABLE}.C8021_CLASSLABEL ;;
  }

  dimension_group: c8021_predicted {
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
    sql: ${TABLE}.C8021_PREDICTED_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

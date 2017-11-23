view: t8025_user_gender_prediction {
  sql_table_name: PUBLIC.T8025_USER_GENDER_PREDICTION ;;

  dimension: c8025_confidence {
    type: number
    sql: ${TABLE}.C8025_CONFIDENCE ;;
  }

  dimension: c8025_gender {
    type: string
    sql: ${TABLE}.C8025_GENDER ;;
  }

  dimension: c8025_nxtuid {
    type: string
    sql: ${TABLE}.C8025_NXTUID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

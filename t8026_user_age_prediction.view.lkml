view: t8026_user_age_prediction {
  sql_table_name: PUBLIC.T8026_USER_AGE_PREDICTION ;;

  dimension: c8026_nxtuid {
    type: string
    sql: ${TABLE}.C8026_NXTUID ;;
  }

  dimension: c8026_scored_class_0 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_0 ;;
  }

  dimension: c8026_scored_class_1 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_1 ;;
  }

  dimension: c8026_scored_class_2 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_2 ;;
  }

  dimension: c8026_scored_class_3 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_3 ;;
  }

  dimension: c8026_scored_class_4 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_4 ;;
  }

  dimension: c8026_scored_class_5 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_5 ;;
  }

  dimension: c8026_scored_class_6 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_6 ;;
  }

  dimension: c8026_scored_class_7 {
    type: number
    sql: ${TABLE}.C8026_SCORED_CLASS_7 ;;
  }

  dimension: c8026_scored_labels {
    type: number
    sql: ${TABLE}.C8026_SCORED_LABELS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

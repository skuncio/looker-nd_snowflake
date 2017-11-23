view: t8024_content_preference_control {
  sql_table_name: PUBLIC.T8024_CONTENT_PREFERENCE_CONTROL ;;

  dimension: c8024_access_days_range {
    type: number
    sql: ${TABLE}.C8024_ACCESS_DAYS_RANGE ;;
  }

  dimension: c8024_content_preference {
    type: string
    sql: ${TABLE}.C8024_CONTENT_PREFERENCE ;;
  }

  dimension: c8024_id {
    type: string
    sql: ${TABLE}.C8024_ID ;;
  }

  dimension: c8024_load_type {
    type: string
    sql: ${TABLE}.C8024_LOAD_TYPE ;;
  }

  dimension: c8024_view_count_threshold {
    type: number
    sql: ${TABLE}.C8024_VIEW_COUNT_THRESHOLD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: t4006_dashboard_rt_hour {
  sql_table_name: PUBLIC.T4006_DASHBOARD_RT_HOUR ;;

  dimension: c4006_content {
    type: string
    sql: ${TABLE}.C4006_CONTENT ;;
  }

  dimension: c4006_datetime {
    type: string
    sql: ${TABLE}.C4006_DATETIME ;;
  }

  dimension: c4006_imp_type {
    type: string
    sql: ${TABLE}.C4006_IMP_TYPE ;;
  }

  dimension: c4006_product {
    type: string
    sql: ${TABLE}.C4006_PRODUCT ;;
  }

  dimension: c4006_region {
    type: string
    sql: ${TABLE}.C4006_REGION ;;
  }

  dimension: c4006_view_count {
    type: number
    sql: ${TABLE}.C4006_VIEW_COUNT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

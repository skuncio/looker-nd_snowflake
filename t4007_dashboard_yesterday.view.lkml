view: t4007_dashboard_yesterday {
  sql_table_name: PUBLIC.T4007_DASHBOARD_YESTERDAY ;;

  dimension: c4007_action {
    type: string
    sql: ${TABLE}.C4007_ACTION ;;
  }

  dimension: c4007_content {
    type: string
    sql: ${TABLE}.C4007_CONTENT ;;
  }

  dimension_group: c4007 {
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
    sql: ${TABLE}.C4007_DATE ;;
  }

  dimension: c4007_product {
    type: string
    sql: ${TABLE}.C4007_PRODUCT ;;
  }

  dimension: c4007_region {
    type: string
    sql: ${TABLE}.C4007_REGION ;;
  }

  dimension: c4007_total_page_views {
    type: number
    sql: ${TABLE}.C4007_TOTAL_PAGE_VIEWS ;;
  }

  dimension: c4007_total_unique_users {
    type: number
    sql: ${TABLE}.C4007_TOTAL_UNIQUE_USERS ;;
  }

  dimension: c4007_total_video_views {
    type: number
    sql: ${TABLE}.C4007_TOTAL_VIDEO_VIEWS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

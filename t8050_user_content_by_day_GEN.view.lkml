view: t8050_user_content_by_day_gen {
  sql_table_name: PUBLIC.T8050_USER_CONTENT_BY_DAY ;;

  dimension: c8050_action {
    type: string
    sql: ${TABLE}.C8050_ACTION ;;
  }

  dimension: c8050_average_page_duration {
    type: number
    sql: ${TABLE}.C8050_AVERAGE_PAGE_DURATION ;;
  }

  dimension: c8050_average_video_duration {
    type: number
    sql: ${TABLE}.C8050_AVERAGE_VIDEO_DURATION ;;
  }

  dimension: c8050_category {
    type: string
    sql: ${TABLE}.C8050_CATEGORY ;;
  }

  dimension: c8050_channel {
    type: string
    sql: ${TABLE}.C8050_CHANNEL ;;
  }

  dimension: c8050_cid {
    type: string
    sql: ${TABLE}.C8050_CID ;;
  }

  dimension: c8050_content {
    type: string
    sql: ${TABLE}.C8050_CONTENT ;;
  }

  dimension_group: c8050_datetime {
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
    sql: ${TABLE}.C8050_DATETIME ;;
  }

  dimension: c8050_news {
    type: string
    sql: ${TABLE}.C8050_NEWS ;;
  }

  dimension: c8050_nxtu_or_did {
    type: string
    sql: ${TABLE}.C8050_NXTU_OR_DID ;;
  }

  dimension: c8050_platform {
    type: string
    sql: ${TABLE}.C8050_PLATFORM ;;
  }

  dimension: c8050_product {
    type: string
    sql: ${TABLE}.C8050_PRODUCT ;;
  }

  dimension: c8050_region {
    type: string
    sql: ${TABLE}.C8050_REGION ;;
  }

  dimension: c8050_section {
    type: string
    sql: ${TABLE}.C8050_SECTION ;;
  }

  dimension: c8050_source {
    type: string
    sql: ${TABLE}.C8050_SOURCE ;;
  }

  dimension: c8050_subsection {
    type: string
    sql: ${TABLE}.C8050_SUBSECTION ;;
  }

  dimension: c8050_total_page_views {
    type: number
    sql: ${TABLE}.C8050_TOTAL_PAGE_VIEWS ;;
  }

  dimension: c8050_total_video_views {
    type: number
    sql: ${TABLE}.C8050_TOTAL_VIDEO_VIEWS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

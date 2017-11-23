view: t8023_user_segments {
  sql_table_name: PUBLIC.T8023_USER_SEGMENTS ;;

  dimension_group: c8023_create {
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
    sql: ${TABLE}.C8023_CREATE_DATE ;;
  }

  dimension: c8023_nxtuid {
    type: string
    sql: ${TABLE}.C8023_NXTUID ;;
  }

  dimension: c8023_segment {
    type: string
    sql: ${TABLE}.C8023_SEGMENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: t8001_user_crossref {
  sql_table_name: PUBLIC.T8001_USER_CROSSREF ;;

  dimension: c8001_activity_count {
    type: number
    sql: ${TABLE}.C8001_ACTIVITY_COUNT ;;
  }

  dimension: c8001_adid {
    type: string
    sql: ${TABLE}.C8001_ADID ;;
  }

  dimension: c8001_android_id {
    type: string
    sql: ${TABLE}.C8001_ANDROID_ID ;;
  }

  dimension: c8001_city {
    type: string
    sql: ${TABLE}.C8001_CITY ;;
  }

  dimension: c8001_country {
    type: string
    sql: ${TABLE}.C8001_COUNTRY ;;
  }

  dimension_group: c8001_create {
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
    sql: ${TABLE}.C8001_CREATE_DATE ;;
  }

  dimension: c8001_did {
    type: string
    sql: ${TABLE}.C8001_DID ;;
  }

  dimension: c8001_gaid {
    type: string
    sql: ${TABLE}.C8001_GAID ;;
  }

  dimension: c8001_gigyaid {
    type: string
    sql: ${TABLE}.C8001_GIGYAID ;;
  }

  dimension: c8001_ip {
    type: string
    sql: ${TABLE}.C8001_IP ;;
  }

  dimension: c8001_ip_count {
    type: number
    sql: ${TABLE}.C8001_IP_COUNT ;;
  }

  dimension_group: c8001_last_activity {
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
    sql: ${TABLE}.C8001_LAST_ACTIVITY_DATE ;;
  }

  dimension: c8001_ndid {
    type: string
    sql: ${TABLE}.C8001_NDID ;;
  }

  dimension: c8001_ngsid {
    type: string
    sql: ${TABLE}.C8001_NGSID ;;
  }

  dimension: c8001_nxtu {
    type: string
    sql: ${TABLE}.C8001_NXTU ;;
  }

  dimension: c8001_nxtu_or_did {
    type: string
    sql: ${TABLE}.C8001_NXTU_OR_DID ;;
  }

  dimension_group: c8001_update {
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
    sql: ${TABLE}.C8001_UPDATE_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

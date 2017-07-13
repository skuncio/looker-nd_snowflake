view: t4005_etw_event {
  sql_table_name: PUBLIC.T4005_ETW_EVENT ;;

  dimension: c4005_adid {
    type: string
    sql: ${TABLE}.C4005_ADID ;;
  }

  dimension: c4005_area {
    type: string
    sql: ${TABLE}.C4005_AREA ;;
  }

  dimension: c4005_br {
    type: string
    sql: ${TABLE}.C4005_BR ;;
  }

  dimension: c4005_bv {
    type: string
    sql: ${TABLE}.C4005_BV ;;
  }

  dimension: c4005_cuisine {
    type: string
    sql: ${TABLE}.C4005_CUISINE ;;
  }

  dimension: c4005_did {
    type: string
    sql: ${TABLE}.C4005_DID ;;
  }

  dimension: c4005_district {
    type: string
    sql: ${TABLE}.C4005_DISTRICT ;;
  }

  dimension: c4005_eaction {
    type: string
    sql: ${TABLE}.C4005_EACTION ;;
  }

  dimension: c4005_ecat {
    type: string
    sql: ${TABLE}.C4005_ECAT ;;
  }

  dimension: c4005_edate {
    type: string
    sql: ${TABLE}.C4005_EDATE ;;
  }

  dimension: c4005_elabel {
    type: string
    sql: ${TABLE}.C4005_ELABEL ;;
  }

  dimension: c4005_elabel_id {
    type: string
    sql: ${TABLE}.C4005_ELABEL_ID ;;
  }

  dimension: c4005_eval {
    type: string
    sql: ${TABLE}.C4005_EVAL ;;
  }

  dimension: c4005_eval2 {
    type: string
    sql: ${TABLE}.C4005_EVAL2 ;;
  }

  dimension: c4005_eval3 {
    type: string
    sql: ${TABLE}.C4005_EVAL3 ;;
  }

  dimension: c4005_eval4 {
    type: string
    sql: ${TABLE}.C4005_EVAL4 ;;
  }

  dimension: c4005_foodtype {
    type: string
    sql: ${TABLE}.C4005_FOODTYPE ;;
  }

  dimension: c4005_from {
    type: string
    sql: ${TABLE}.C4005_FROM ;;
  }

  dimension: c4005_lat {
    type: number
    sql: ${TABLE}.C4005_LAT ;;
  }

  dimension: c4005_lon {
    type: number
    sql: ${TABLE}.C4005_LON ;;
  }

  dimension: c4005_nxtu {
    type: string
    sql: ${TABLE}.C4005_NXTU ;;
  }

  dimension: c4005_omo_accid {
    type: string
    sql: ${TABLE}.C4005_OMO_ACCID ;;
  }

  dimension: c4005_omo_pid {
    type: string
    sql: ${TABLE}.C4005_OMO_PID ;;
  }

  dimension: c4005_os {
    type: string
    sql: ${TABLE}.C4005_OS ;;
  }

  dimension: c4005_photo_id {
    type: string
    sql: ${TABLE}.C4005_PHOTO_ID ;;
  }

  dimension: c4005_platform {
    type: string
    sql: ${TABLE}.C4005_PLATFORM ;;
  }

  dimension: c4005_pos {
    type: number
    sql: ${TABLE}.C4005_POS ;;
  }

  dimension: c4005_prod {
    type: string
    sql: ${TABLE}.C4005_PROD ;;
  }

  dimension: c4005_region {
    type: string
    sql: ${TABLE}.C4005_REGION ;;
  }

  dimension: c4005_related_id {
    type: string
    sql: ${TABLE}.C4005_RELATED_ID ;;
  }

  dimension: c4005_sess {
    type: string
    sql: ${TABLE}.C4005_SESS ;;
  }

  dimension: c4005_site {
    type: string
    sql: ${TABLE}.C4005_SITE ;;
  }

  dimension: c4005_spending {
    type: string
    sql: ${TABLE}.C4005_SPENDING ;;
  }

  dimension: c4005_sz {
    type: string
    sql: ${TABLE}.C4005_SZ ;;
  }

  dimension: c4005_version {
    type: string
    sql: ${TABLE}.C4005_VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

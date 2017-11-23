view: t1025_reg_prod_cid_title {
  sql_table_name: PUBLIC.T1025_REG_PROD_CID_TITLE ;;

  dimension: c1025_cid {
    type: string
    sql: ${TABLE}.C1025_CID ;;
  }

  dimension: c1025_imp_type {
    type: string
    sql: ${TABLE}.C1025_IMP_TYPE ;;
  }

  dimension: c1025_product {
    type: string
    sql: ${TABLE}.C1025_PRODUCT ;;
  }

  dimension: c1025_region {
    type: string
    sql: ${TABLE}.C1025_REGION ;;
  }

  dimension: c1025_title {
    type: string
    sql: ${TABLE}.C1025_TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

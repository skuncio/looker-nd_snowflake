view: view_agg_with_article {
  #sql_table_name: LOOKER_SCRATCH.LR$XWFJLUIT9XOEN7W0DL6SE_pdt_view_agg_with_article ;;
  sql_table_name: LOOKER_SCRATCH.LR$XWCV35F2BK91G7UWQ3NPB_pdt_view_agg_with_article ;;

dimension: ads {
  # view_label: "User"
  type: string
  sql: ${TABLE}.c8002_ads ;;
}

dimension: view_type {
  description: "PAGEVIEW or VIDEOVIEW"
  alias: [action]
  type: string
  sql: ${TABLE}.c8002_action ;;
}

dimension: app_version {
  type: string
  sql: ${TABLE}.c8002_app_version ;;
}

dimension: artid {
  type: string
  sql: ${TABLE}.c8002_artid ;;
}

dimension: auto_play {
  type: string
  sql: ${TABLE}.c8002_auto ;;
}

dimension: category {
  type: string
  sql: ${TABLE}.c8002_category ;;
  drill_fields: [section, product]
}

dimension: channel {
  type: string
  sql: ${TABLE}.c8002_channel ;;
}

dimension: content_id {
  type: string
  sql: ${TABLE}.c8002_cid ;;
}

dimension: content_type {
  type: string
  sql: ${TABLE}.c8002_content ;;
}

dimension_group: view {
  type: time
  timeframes: [time, date, week, month, year]
  convert_tz: no
  sql: ${TABLE}.c8002_datetime ;;
}

dimension: edm {
  type: string
  sql: ${TABLE}.c8002_edm ;;
}

dimension: issueid {
  type: string
  sql: ${TABLE}.c8002_issueid ;;
}

dimension: keyword {
  type: string
  sql: ${TABLE}.c8002_keyword ;;
}

dimension: language {
  type: string
  sql: ${TABLE}.c8002_language ;;
}

dimension: news {
  type: string
  sql: ${TABLE}.c8002_news ;;
}

dimension: platform {
  type: string
  sql: ${TABLE}.c8002_platform ;;
}

dimension: product {
  type: string
  sql: ${TABLE}.c8002_product ;;
  drill_fields: [section, category]
}

dimension: region {
  type: string
  sql: ${TABLE}.c8002_region ;;
}

dimension: section {
  type: string
  sql: ${TABLE}.c8002_section ;;
  drill_fields: [product, category]
}

#  - dimension: site
#    type: string
#    sql: ${TABLE}.c8002_site

dimension: source {
  type: string
  sql: ${TABLE}.c8002_source ;;
}

dimension: title {
  type: string
  sql: ${TABLE}.c8002_title ;;
}

#### measures #############


dimension: video_views {
  hidden: yes
  type: number
  sql: ${TABLE}.total_video_views ;;
}

dimension: avg_video_duration {
  hidden: yes
  type: number
  sql: ${TABLE}.average_video_duration ;;
}

measure: sum_video_views {
  alias: [total_video_views]
#  hidden: yes
  type: sum
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
  sql: ${video_views} ;;
}

measure: sum_video_duration {
  hidden: yes
  type: sum
  sql: ${avg_video_duration} * ${video_views} ;;
}

measure: weighted_avg_video_duration {
  type: number
  value_format: "#,##0.00"
  sql: ${sum_video_duration} / nullif(${sum_video_views},0) ;;
}

dimension: page_views {
  hidden: yes
  type: number
  sql: ${TABLE}.total_page_views ;;
  }

dimension: avg_page_duration {
  hidden: yes
  type: number
  sql: ${TABLE}.average_page_duration ;;
}

measure: sum_page_views {
  alias: [total_page_views]
#  hidden: yes
  type: sum
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
  sql: ${page_views} ;;
}
measure: sum_page_duration {
  hidden: yes
  type: sum
  sql: ${avg_page_duration} * ${page_views} ;;
}

measure: weighted_avg_page_duration {
  type: number
  value_format: "#,##0.00"
  sql: ${sum_page_duration} / nullif(${sum_page_views},0) ;;
}

measure: count {
  type: count
  # approximate: yes
  drill_fields: []
}

measure: distinct_content {
  #    view_label: Content
  type: count_distinct
  sql: ${content_id} ;;
  #approximate: yes
}
}

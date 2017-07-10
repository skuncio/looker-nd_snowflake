connection: "nd_snowflake_analytics"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: t3016_seg_agg_cid_day {
  label: "1) Content Imp Summary (historical by day) - Snowflake"
  view_label: "CID Views"
}

explore: contentview {
  label: "3) Content Views Detail (2 mths by time)"
  view_label: "All Content Views"

  join: content {
    view_label: "Content Object Meta Data"
    sql_on: ${contentview.cid} = ${content.cid} and ${contentview.region} = ${content.region} and ${contentview.product} = ${content.product} and ${content.video_length} > 0 ;;
    relationship: many_to_one
    type: left_outer
  }
}

#explore: t8002_contentview_u {}

explore: t8001_user_crossref {}

#explore: t3016_seg_agg_cid_day {}

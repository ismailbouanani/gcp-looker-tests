# The name of this view in Looker is "V Fact Xca Clicks"
view: v_fact_xca_clicks {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_clicks`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID Bk" in Explore.

  dimension: category_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.CATEGORY_ID_BK ;;
  }

  dimension: clicks_number {
    type: number
    sql: ${TABLE}.CLICKS_NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_clicks_number {
    type: sum
    sql: ${clicks_number} ;;
  }

  measure: average_clicks_number {
    type: average
    sql: ${clicks_number} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_TIME ;;
  }

  dimension: dwh_calendar_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ID ;;
  }

  dimension: dwh_category_id {
    type: number
    sql: ${TABLE}.DWH_CATEGORY_ID ;;
  }

  dimension: dwh_clicks_id {
    type: number
    sql: ${TABLE}.DWH_CLICKS_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_links_id {
    type: number
    sql: ${TABLE}.DWH_LINKS_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_order_frequency_segment_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_FREQUENCY_SEGMENT_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_time_hour_id {
    type: number
    sql: ${TABLE}.DWH_TIME_HOUR_ID ;;
  }

  dimension: dwh_user_abo_delivery_pass_id {
    type: number
    sql: ${TABLE}.DWH_USER_ABO_DELIVERY_PASS_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.LANGUAGE ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.LINK_ID ;;
  }

  dimension: link_model {
    type: string
    sql: ${TABLE}.LINK_MODEL ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.LINK_URL ;;
  }

  dimension: link_variant_id {
    type: number
    sql: ${TABLE}.LINK_VARIANT_ID ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: main_key_sku_dim_1_bk {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_1_BK ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: sys_recip_id {
    type: number
    sql: ${TABLE}.SYS_RECIP_ID ;;
  }

  dimension: time_hour_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.TIME_HOUR_ID_BK ;;
  }

  dimension: user_abo_delivery_pass_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.USER_ABO_DELIVERY_PASS_ID_BK ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }
  dimension: warehouse_language {
    type: string
    sql: CASE WHEN ${warehouse_id_bk} IN (2,7) THEN 'DE'
    ELSE 'FR' END;;
  }
  measure: clicks_total {
    view_label: "XCA Metrics"
    type:  sum
    sql: ${clicks_number} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

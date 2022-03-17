# The name of this view in Looker is "V Fact Mgb Sales"
view: v_fact_mgb_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_mgb_sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar Order ID" in Explore.

  dimension: dwh_calendar_order_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ORDER_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_mgb_product_id {
    type: number
    sql: ${TABLE}.DWH_MGB_PRODUCT_ID ;;
  }

  dimension: dwh_mgb_sales_id {
    type: number
    sql: ${TABLE}.DWH_MGB_SALES_ID ;;
  }

  dimension: dwh_mgb_store_id {
    type: number
    sql: ${TABLE}.DWH_MGB_STORE_ID ;;
  }

  dimension: dwh_mgb_transaction_type_id {
    type: number
    sql: ${TABLE}.DWH_MGB_TRANSACTION_TYPE_ID ;;
  }

  dimension: dwh_order_time_hour_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_TIME_HOUR_ID ;;
  }

  dimension: extra_cumulus_points {
    type: number
    sql: ${TABLE}.EXTRA_CUMULUS_POINTS ;;
  }

  dimension: kassekstid_bk {
    type: number
    sql: ${TABLE}.KASSEKSTID_BK ;;
  }

  dimension: kassenummer_bk {
    type: number
    sql: ${TABLE}.KASSENUMMER_BK ;;
  }

  dimension: kassetypid_bk {
    type: number
    sql: ${TABLE}.KASSETYPID_BK ;;
  }

  dimension: mgb_product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.MGB_PRODUCT_ID_BK ;;
  }

  dimension: mgb_store_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.MGB_STORE_ID_BK ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order_date_id_bk {
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
    sql: ${TABLE}.ORDER_DATE_ID_BK ;;
  }

  dimension: order_time_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_TIME_ID_BK ;;
  }

  dimension: promotion_reduction {
    type: number
    sql: ${TABLE}.PROMOTION_REDUCTION ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: sales_vp {
    type: number
    sql: ${TABLE}.SALES_VP ;;
  }

  dimension: sales_vp_without_vat {
    type: number
    sql: ${TABLE}.SALES_VP_WITHOUT_VAT ;;
  }

  dimension: transaction_number {
    type: number
    sql: ${TABLE}.TRANSACTION_NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_transaction_number {
    type: sum
    sql: ${transaction_number} ;;
  }

  measure: average_transaction_number {
    type: average
    sql: ${transaction_number} ;;
  }

  dimension: transaction_type_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.TRANSACTION_TYPE_ID_BK ;;
  }

  dimension: vat_value {
    type: number
    sql: ${TABLE}.VAT_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

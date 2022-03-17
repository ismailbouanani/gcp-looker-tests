# The name of this view in Looker is "V Fact Xca Transactions"
view: v_fact_xca_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_transactions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: click_id {
    type: number
    sql: ${TABLE}.CLICK_ID ;;
  }

  dimension: custom_params {
    type: string
    sql: ${TABLE}.CUSTOM_PARAMS ;;
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

  dimension_group: delivery_date_id_bk {
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
    sql: ${TABLE}.DELIVERY_DATE_ID_BK ;;
  }

  dimension: dwh_calendar_transaction_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_TRANSACTION_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_order_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_ID ;;
  }

  dimension: dwh_xca_transaction_id {
    type: number
    sql: ${TABLE}.DWH_XCA_TRANSACTION_ID ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.LINK_ID ;;
  }

  dimension: link_variant_id {
    type: number
    sql: ${TABLE}.LINK_VARIANT_ID ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: nr_of_items {
    type: number
    sql: ${TABLE}.NR_OF_ITEMS ;;
  }

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

  dimension: order_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_ID_BK ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.PRODUCT_CATEGORY_ID ;;
  }

  dimension: sys_recip_id {
    type: number
    sql: ${TABLE}.SYS_RECIP_ID ;;
  }

  dimension: user_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.USER_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

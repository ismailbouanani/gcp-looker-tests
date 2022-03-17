# The name of this view in Looker is "V Fact Internal Mail Delivery"
view: v_fact_internal_mail_delivery {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_internal_mail_delivery`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar ID" in Explore.

  dimension: dwh_calendar_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ID ;;
  }

  dimension: dwh_calendar_order_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ORDER_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_internal_mail_sms_delivery_id {
    type: number
    sql: ${TABLE}.DWH_INTERNAL_MAIL_SMS_DELIVERY_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_order_frequency_segment_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_FREQUENCY_SEGMENT_ID ;;
  }

  dimension: dwh_order_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_ID ;;
  }

  dimension: dwh_user_abo_delivery_pass_id {
    type: number
    sql: ${TABLE}.DWH_USER_ABO_DELIVERY_PASS_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: mailing_id {
    type: string
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: order_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_ID_BK ;;
  }

  dimension: order_number_num {
    type: number
    sql: ${TABLE}.ORDER_NUMBER_NUM ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number_num {
    type: sum
    sql: ${order_number_num} ;;
  }

  measure: average_order_number_num {
    type: average
    sql: ${order_number_num} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: sent {
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
    sql: ${TABLE}.SENT_DATE ;;
  }

  dimension: user_abo_delivery_pass_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.USER_ABO_DELIVERY_PASS_ID_BK ;;
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

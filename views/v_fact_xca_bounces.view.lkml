# The name of this view in Looker is "V Fact Xca Bounces"
view: v_fact_xca_bounces {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_bounces`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bounce Type" in Explore.

  dimension: bounce_type {
    type: string
    sql: ${TABLE}.BOUNCE_TYPE ;;
  }

  dimension: check_sum {
    type: number
    sql: ${TABLE}.CHECK_SUM ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_check_sum {
    type: sum
    sql: ${check_sum} ;;
  }

  measure: average_check_sum {
    type: average
    sql: ${check_sum} ;;
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

  dimension: dwh_bounces_id {
    type: number
    sql: ${TABLE}.DWH_BOUNCES_ID ;;
  }

  dimension: dwh_calendar_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_order_frequency_segment_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_FREQUENCY_SEGMENT_ID ;;
  }

  dimension: dwh_time_hour_id {
    type: number
    sql: ${TABLE}.DWH_TIME_HOUR_ID ;;
  }

  dimension: dwh_user_abo_delivery_pass_id {
    type: number
    sql: ${TABLE}.DWH_USER_ABO_DELIVERY_PASS_ID ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}.ERROR_CODE ;;
  }

  dimension: error_text {
    type: string
    sql: ${TABLE}.ERROR_TEXT ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: mail_server {
    type: string
    sql: ${TABLE}.MAIL_SERVER ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: ssis_log_id {
    type: number
    sql: ${TABLE}.SSIS_LOG_ID ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}

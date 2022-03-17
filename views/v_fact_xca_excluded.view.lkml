# The name of this view in Looker is "V Fact Xca Excluded"
view: v_fact_xca_excluded {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_excluded`
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

  dimension: dwh_calendar_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_excluded_id {
    type: number
    sql: ${TABLE}.DWH_EXCLUDED_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_order_frequency_segment_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_FREQUENCY_SEGMENT_ID ;;
  }

  dimension: dwh_user_abo_delivery_pass_id {
    type: number
    sql: ${TABLE}.DWH_USER_ABO_DELIVERY_PASS_ID ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.LANG ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_month_partitioning {
    type: sum
    sql: ${month_partitioning} ;;
  }

  measure: average_month_partitioning {
    type: average
    sql: ${month_partitioning} ;;
  }

  dimension: sys_recip_id {
    type: number
    sql: ${TABLE}.SYS_RECIP_ID ;;
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

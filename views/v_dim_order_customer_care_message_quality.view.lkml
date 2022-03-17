# The name of this view in Looker is "V Dim Order Customer Care Message Quality"
view: v_dim_order_customer_care_message_quality {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_order_customer_care_message_quality`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Order Customer Care Message Quality ID" in Explore.

  dimension: dwh_order_customer_care_message_quality_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_CUSTOMER_CARE_MESSAGE_QUALITY_ID ;;
  }

  dimension: first_answer_time {
    type: string
    sql: ${TABLE}.FIRST_ANSWER_TIME ;;
  }

  dimension: is_registered {
    type: yesno
    sql: ${TABLE}.IS_REGISTERED ;;
  }

  dimension: is_registered_text {
    type: string
    sql: ${TABLE}.IS_REGISTERED_TEXT ;;
  }

  dimension: is_related {
    type: yesno
    sql: ${TABLE}.IS_RELATED ;;
  }

  dimension: is_related_text {
    type: string
    sql: ${TABLE}.IS_RELATED_TEXT ;;
  }

  dimension: max_case_time {
    type: number
    sql: ${TABLE}.MAX_CASE_TIME ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_max_case_time {
    type: sum
    sql: ${max_case_time} ;;
  }

  measure: average_max_case_time {
    type: average
    sql: ${max_case_time} ;;
  }

  dimension: max_first_answer_time {
    type: number
    sql: ${TABLE}.MAX_FIRST_ANSWER_TIME ;;
  }

  dimension: max_total_messages {
    type: number
    sql: ${TABLE}.MAX_TOTAL_MESSAGES ;;
  }

  dimension: messages_exchanged {
    type: string
    sql: ${TABLE}.MESSAGES_EXCHANGED ;;
  }

  dimension: min_case_time {
    type: number
    sql: ${TABLE}.MIN_CASE_TIME ;;
  }

  dimension: min_first_answer_time {
    type: number
    sql: ${TABLE}.MIN_FIRST_ANSWER_TIME ;;
  }

  dimension: min_total_messages {
    type: number
    sql: ${TABLE}.MIN_TOTAL_MESSAGES ;;
  }

  dimension: nb_total_messages {
    type: string
    sql: ${TABLE}.NB_TOTAL_MESSAGES ;;
  }

  dimension: status_text {
    type: string
    sql: ${TABLE}.STATUS_TEXT ;;
  }

  dimension: total_case_time {
    type: string
    sql: ${TABLE}.TOTAL_CASE_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

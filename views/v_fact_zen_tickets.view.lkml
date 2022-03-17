# The name of this view in Looker is "V Fact Zen Tickets"
view: v_fact_zen_tickets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_zen_tickets`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar Created ID" in Explore.

  dimension: dwh_calendar_created_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_CREATED_ID ;;
  }

  dimension: dwh_calendar_solved_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_SOLVED_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_order_customer_care_message_quality_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_CUSTOMER_CARE_MESSAGE_QUALITY_ID ;;
  }

  dimension: dwh_zen_attributes_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_ATTRIBUTES_ID ;;
  }

  dimension: dwh_zen_tickets_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_TICKETS_ID ;;
  }

  dimension: first_resolution_time_minutes {
    type: number
    sql: ${TABLE}.FIRST_RESOLUTION_TIME_MINUTES ;;
  }

  dimension: full_resolution_time_minutes {
    type: number
    sql: ${TABLE}.FULL_RESOLUTION_TIME_MINUTES ;;
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

  dimension: reopens {
    type: number
    sql: ${TABLE}.REOPENS ;;
  }

  dimension: replies {
    type: number
    sql: ${TABLE}.REPLIES ;;
  }

  dimension_group: solved {
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
    sql: ${TABLE}.SOLVED_AT ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.SUBJECT ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.TAGS ;;
  }

  dimension: ticket_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.TICKET_ID_BK ;;
  }

  dimension: total_messages {
    type: number
    sql: ${TABLE}.TOTAL_MESSAGES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

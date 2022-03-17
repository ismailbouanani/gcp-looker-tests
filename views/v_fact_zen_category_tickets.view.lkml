# The name of this view in Looker is "V Fact Zen Category Tickets"
view: v_fact_zen_category_tickets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_zen_category_tickets`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Zen Category ID" in Explore.

  dimension: dwh_zen_category_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_CATEGORY_ID ;;
  }

  dimension: dwh_zen_category_tickets_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_CATEGORY_TICKETS_ID ;;
  }

  dimension: number_of_categories {
    type: number
    sql: ${TABLE}.NUMBER_OF_CATEGORIES ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_categories {
    type: sum
    sql: ${number_of_categories} ;;
  }

  measure: average_number_of_categories {
    type: average
    sql: ${number_of_categories} ;;
  }

  dimension: ticket_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.TICKET_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

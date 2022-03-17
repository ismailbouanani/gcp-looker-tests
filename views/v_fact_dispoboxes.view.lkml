# The name of this view in Looker is "V Fact Dispoboxes"
view: v_fact_dispoboxes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_dispoboxes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar Insertion ID" in Explore.

  dimension: dwh_calendar_insertion_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_INSERTION_ID ;;
  }

  dimension: nb_dispo_boxes {
    type: number
    sql: ${TABLE}.nb_dispo_boxes ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_nb_dispo_boxes {
    type: sum
    sql: ${nb_dispo_boxes} ;;
  }

  measure: average_nb_dispo_boxes {
    type: average
    sql: ${nb_dispo_boxes} ;;
  }

  dimension: order_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_ID_BK ;;
  }

  dimension: printed_label_identifier {
    type: string
    sql: ${TABLE}.PRINTED_LABEL_IDENTIFIER ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "V Fact Stock Movements Picking Aggregation"
view: v_fact_stock_movements_picking_aggregation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_stock_movements_picking_aggregation`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Area" in Explore.

  dimension: area {
    type: number
    sql: ${TABLE}.AREA ;;
  }

  dimension: dwh_calendar_pick_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_PICK_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: number_of_product_picked {
    type: number
    sql: ${TABLE}.NUMBER_OF_PRODUCT_PICKED ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_product_picked {
    type: sum
    sql: ${number_of_product_picked} ;;
  }

  measure: average_number_of_product_picked {
    type: average
    sql: ${number_of_product_picked} ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
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

# The name of this view in Looker is "V Dim Product Warehouse Status Historical"
view: v_dim_product_warehouse_status_historical {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_product_warehouse_status_historical`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Product Warehouse ID" in Explore.

  dimension: dwh_product_warehouse_id {
    type: number
    description: "technical unique key for products (avaiable in dim_product_warehosue for example)"
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_product_warehouse_status_historical_id {
    type: number
    description: "technical unique key"
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_STATUS_HISTORICAL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    description: "end date of the period (always last day of status at 23:59). Is null if this is the current status"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: month_partitioning {
    type: number
    description: "key for month partitioning"
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

  dimension: product_status {
    type: number
    description: "status of the product for the period between start_date and end_date. 1 is Online. 0 if Offline (i.e. not sold on the website)"
    sql: ${TABLE}.PRODUCT_STATUS ;;
  }

  dimension_group: start {
    type: time
    description: "start date of the period (always first day of status at 00:00)"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "V Dim Product Warehouse Purchase Price Historical"
view: v_dim_product_warehouse_purchase_price_historical {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_product_warehouse_purchase_price_historical`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Product Warehouse ID" in Explore.

  dimension: dwh_product_warehouse_id {
    type: number
    description: "technical unique key for products (avaiable in dim_product_warehouse for example)"
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_product_warehouse_purchase_price_historical_id {
    type: number
    description: "technical unique key"
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_PURCHASE_PRICE_HISTORICAL_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    description: "end date of the period (always last day of status at 23:59). Is null if this is the current price"
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

  dimension: is_alert {
    type: yesno
    description: "true if the change toward last purchase price is too big"
    sql: ${TABLE}.IS_ALERT ;;
  }

  dimension: month_partitioning {
    type: number
    description: "key for month partitioning"
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: product_purchase_price {
    type: number
    description: "product purchase price (! DOES NOT INCLUDE PROMOTION!) between start _date and end_date"
    sql: ${TABLE}.PRODUCT_PURCHASE_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_product_purchase_price {
    type: sum
    sql: ${product_purchase_price} ;;
  }

  measure: average_product_purchase_price {
    type: average
    sql: ${product_purchase_price} ;;
  }

  dimension_group: start {
    type: time
    description: "start date of the period (always first day of price at 00:00)"
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

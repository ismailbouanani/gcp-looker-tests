# The name of this view in Looker is "V Fact Stockhistory"
view: v_fact_stockhistory {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_stockhistory`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: calendar_datevalue_id_bk {
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
    sql: ${TABLE}.CALENDAR_DATEVALUE_ID_BK ;;
  }

  dimension_group: calendar_for_stockquantity_at_night_id_bk {
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
    sql: ${TABLE}.CALENDAR_for_STOCKQUANTITY_at_night_ID_BK ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar Datevalue ID" in Explore.

  dimension: dwh_calendar_datevalue_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_DATEVALUE_ID ;;
  }

  dimension: dwh_calendar_for_stockquantity_at_night_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_for_STOCKQUANTITY_at_night_ID ;;
  }

  dimension: dwh_fr_cause_id {
    type: number
    sql: ${TABLE}.DWH_FR_CAUSE_ID ;;
  }

  dimension: dwh_product_loyalty_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_LOYALTY_ID ;;
  }

  dimension: dwh_product_warehouse_historical_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_HISTORICAL_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_ptt_zone_id {
    type: number
    sql: ${TABLE}.DWH_PTT_ZONE_ID ;;
  }

  dimension: dwh_stockhistory_id {
    type: number
    sql: ${TABLE}.DWH_STOCKHISTORY_ID ;;
  }

  dimension: dwh_stocklocation_id {
    type: number
    sql: ${TABLE}.DWH_STOCKLOCATION_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: fr_cause_bk {
    type: number
    sql: ${TABLE}.FR_cause_BK ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fr_cause_bk {
    type: sum
    sql: ${fr_cause_bk} ;;
  }

  measure: average_fr_cause_bk {
    type: average
    sql: ${fr_cause_bk} ;;
  }

  dimension: location_level_3 {
    type: number
    sql: ${TABLE}.LOCATION_LEVEL_3 ;;
  }

  dimension: main_key_sku_dim_bk {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_BK ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: nb_lines_uncomplete {
    type: number
    sql: ${TABLE}.nb_lines_uncomplete ;;
  }

  dimension: previous_sku_ep_corr_poids_var_hist_if_diff {
    type: number
    sql: ${TABLE}.Previous_SKU_EP_CORR_POIDS_VAR_Hist_if_diff ;;
  }

  dimension: product_ep_corr_poids_variable_historical {
    type: number
    sql: ${TABLE}.PRODUCT_EP_CORR_POIDS_VARIABLE_Historical ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: product_location_historical {
    type: string
    sql: ${TABLE}.Product_Location_historical ;;
  }

  dimension: product_status {
    type: number
    sql: ${TABLE}.PRODUCT_STATUS ;;
  }

  dimension: ptt_zone_id {
    type: number
    sql: ${TABLE}.PTT_ZONE_ID ;;
  }

  dimension: qty_not_picked_but_ordered {
    type: number
    sql: ${TABLE}.qty_not_picked_but_ordered ;;
  }

  dimension: stock_equal_shelf_space {
    type: number
    sql: ${TABLE}.STOCK_EQUAL_SHELF_SPACE ;;
  }

  dimension: stock_mvt_incoherence_ep {
    type: number
    sql: ${TABLE}.STOCK_MVT_INCOHERENCE_EP ;;
  }

  dimension: stock_mvt_incoherence_qty {
    type: number
    sql: ${TABLE}.STOCK_MVT_INCOHERENCE_QTY ;;
  }

  dimension: stock_over_shelf_space {
    type: number
    sql: ${TABLE}.STOCK_OVER_SHELF_SPACE ;;
  }

  dimension: stock_sku_kg {
    type: number
    sql: ${TABLE}.STOCK_SKU_kg ;;
  }

  dimension: stock_sku_liter {
    type: number
    sql: ${TABLE}.STOCK_SKU_liter ;;
  }

  dimension: stock_under_shelf_space {
    type: number
    sql: ${TABLE}.STOCK_UNDER_SHELF_SPACE ;;
  }

  dimension: stock_value_ep {
    type: number
    sql: ${TABLE}.STOCK_VALUE_EP ;;
  }

  dimension: stock_value_ep_diff_from_ep_changes_since_month_begin {
    type: number
    sql: ${TABLE}.STOCK_VALUE_EP_DIFF_FROM_EP_CHANGES_SINCE_MONTH_BEGIN ;;
  }

  dimension: stockquantity {
    type: number
    sql: ${TABLE}.STOCKQUANTITY ;;
  }

  dimension: stockquantity_left_for_picking_warehouse_resp {
    type: number
    sql: ${TABLE}.STOCKQUANTITY_LEFT_for_picking_Warehouse_Resp ;;
  }

  dimension: stockquantity_the_previous_day {
    type: number
    sql: ${TABLE}.STOCKQUANTITY_the_previous_day ;;
  }

  dimension: stockquantity_the_previous_day_calculated {
    type: number
    sql: ${TABLE}.STOCKQUANTITY_the_previous_day_calculated ;;
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

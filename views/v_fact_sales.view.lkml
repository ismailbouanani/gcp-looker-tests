# The name of this view in Looker is "V Fact Sales"
view: v_fact_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Adjusted Price" in Explore.

  dimension: adjusted_price {
    type: number
    sql: ${TABLE}.ADJUSTED_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_adjusted_price {
    type: sum
    sql: ${adjusted_price} ;;
  }

  measure: average_adjusted_price {
    type: average
    sql: ${adjusted_price} ;;
  }

  dimension: adjusted_price_ep {
    type: number
    sql: ${TABLE}.ADJUSTED_PRICE_EP ;;
  }

  dimension: adjusted_price_normal {
    type: number
    sql: ${TABLE}.ADJUSTED_PRICE_NORMAL ;;
  }

  dimension: adjusted_price_promo_reduction {
    type: number
    sql: ${TABLE}.ADJUSTED_PRICE_PROMO_REDUCTION ;;
  }

  dimension: adjusted_weight {
    type: number
    sql: ${TABLE}.ADJUSTED_WEIGHT ;;
  }

  dimension: basket_evolution {
    type: number
    sql: ${TABLE}.Basket_Evolution ;;
  }

  dimension: basket_evolution_nb_lines_inverted {
    type: number
    sql: ${TABLE}.basket_evolution_nb_lines_inverted ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: calendar_delivery_id_bk {
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
    sql: ${TABLE}.CALENDAR_DELIVERY_ID_BK ;;
  }

  dimension_group: calendar_order_id_bk {
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
    sql: ${TABLE}.CALENDAR_ORDER_ID_BK ;;
  }

  dimension: carbon_per_kg {
    type: number
    sql: ${TABLE}.CARBON_PER_KG ;;
  }

  dimension: compensated_weight_kg {
    type: number
    sql: ${TABLE}.COMPENSATED_WEIGHT_KG ;;
  }

  dimension: customer_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.CUSTOMER_ID_BK ;;
  }

  dimension: delivered_sku_kg {
    type: number
    sql: ${TABLE}.delivered_SKU_kg ;;
  }

  dimension: delivered_sku_liters {
    type: number
    sql: ${TABLE}.delivered_SKU_liters ;;
  }

  dimension: delivered_sku_volume {
    type: number
    sql: ${TABLE}.delivered_SKU_volume ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.DEVICE_NAME ;;
  }

  dimension: dwh_calendar_delivery_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_DELIVERY_ID ;;
  }

  dimension: dwh_calendar_order_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ORDER_ID ;;
  }

  dimension: dwh_calendar_picking_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_PICKING_ID ;;
  }

  dimension: dwh_customer_id {
    type: number
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: dwh_order_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_ID ;;
  }

  dimension: dwh_order_last_6_digits_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_LAST_6_DIGITS_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_sales_id {
    type: number
    sql: ${TABLE}.DWH_SALES_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: first_elapsed_time {
    type: number
    sql: ${TABLE}.FIRST_ELAPSED_TIME ;;
  }

  dimension: first_same_day_elapsed_time {
    type: number
    sql: ${TABLE}.FIRST_SAME_DAY_ELAPSED_TIME ;;
  }

  dimension: fr_cause_bk {
    type: number
    sql: ${TABLE}.FR_cause_BK ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.HOUR ;;
  }

  dimension: item_number {
    type: number
    sql: ${TABLE}.ITEM_NUMBER ;;
  }

  dimension: logistics_cost_estimation {
    type: number
    sql: ${TABLE}.Logistics_Cost_Estimation ;;
  }

  dimension: lost_sales_adjusted_price_partial_delivery {
    type: number
    sql: ${TABLE}.LOST_SALES_ADJUSTED_PRICE_PARTIAL_DELIVERY ;;
  }

  dimension: main_key_sku_dim_1_bk {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_1_BK ;;
  }

  dimension: migros_backmargin {
    type: number
    sql: ${TABLE}.Migros_Backmargin ;;
  }

  dimension: migros_promo_cent_off {
    type: number
    sql: ${TABLE}.Migros_Promo_cent_off ;;
  }

  dimension: modification_line_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.MODIFICATION_LINE_ID_BK ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: nb_days_since_product_last_bought {
    type: number
    sql: ${TABLE}.NB_DAYS_SINCE_PRODUCT_LAST_BOUGHT ;;
  }

  dimension: nb_days_since_product_last_bought_on_qty {
    type: number
    sql: ${TABLE}.NB_DAYS_SINCE_PRODUCT_LAST_BOUGHT_ON_QTY ;;
  }

  dimension: nb_orders_between_sale_of_product {
    type: number
    sql: ${TABLE}.NB_ORDERS_BETWEEN_SALE_OF_PRODUCT ;;
  }

  dimension: nb_orders_between_sale_of_product_on_qty {
    type: number
    sql: ${TABLE}.NB_ORDERS_BETWEEN_SALE_OF_PRODUCT_ON_QTY ;;
  }

  dimension: order_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_ID_BK ;;
  }

  dimension: order_number_num {
    type: number
    sql: ${TABLE}.ORDER_NUMBER_NUM ;;
  }

  dimension: partial_quantity {
    type: number
    sql: ${TABLE}.PARTIAL_QUANTITY ;;
  }

  dimension: prev_elapsed_time {
    type: number
    sql: ${TABLE}.PREV_ELAPSED_TIME ;;
  }

  dimension: prev_elapsed_time_less_5_min {
    type: number
    sql: ${TABLE}.PREV_ELAPSED_TIME_LESS_5_MIN ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: product_in_favourite {
    type: number
    sql: ${TABLE}.PRODUCT_IN_FAVOURITE ;;
  }

  dimension: product_in_list {
    type: number
    sql: ${TABLE}.PRODUCT_IN_LIST ;;
  }

  dimension: promo_cent_off {
    type: number
    sql: ${TABLE}.Promo_Cent_off ;;
  }

  dimension: promotion_line_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PROMOTION_LINE_ID_BK ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.PURCHASE_DATE ;;
  }

  dimension: purchase_line_number_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PURCHASE_LINE_NUMBER_ID_BK ;;
  }

  dimension: purchase_line_time_sec {
    type: number
    sql: ${TABLE}.Purchase_Line_Time_sec ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: reminder_level_olap {
    type: number
    sql: ${TABLE}.REMINDER_LEVEL_OLAP ;;
  }

  dimension: sales_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.SALES_ID_BK ;;
  }

  dimension: total_basket {
    type: number
    sql: ${TABLE}.TOTAL_BASKET ;;
  }

  dimension: total_basket_excluded_product {
    type: number
    sql: ${TABLE}.TOTAL_BASKET_EXCLUDED_PRODUCT ;;
  }

  dimension: total_quality_customer_reclamation_reimbursement_ep {
    type: number
    sql: ${TABLE}.TOTAL_QUALITY_CUSTOMER_RECLAMATION_reimbursement_EP ;;
  }

  dimension: vat {
    type: number
    sql: ${TABLE}.VAT ;;
  }

  dimension: vat_value {
    type: number
    sql: ${TABLE}.VAT_Value ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }

  dimension: wholesale_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WHOLESALE_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name]
  }
}

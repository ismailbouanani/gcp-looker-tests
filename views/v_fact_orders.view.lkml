# The name of this view in Looker is "V Fact Orders"
view: v_fact_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_orders`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abo" in Explore.

  dimension: abo {
    type: number
    sql: ${TABLE}.Abo ;;
  }

  dimension: basket_range {
    type: string
    sql: ${TABLE}.BASKET_RANGE ;;
  }

  dimension: before_after_delivery {
    type: number
    sql: ${TABLE}.before_after_delivery ;;
  }

  dimension: billing_zip_bk {
    type: number
    sql: ${TABLE}.BILLING_ZIP_BK ;;
  }

  dimension: bvrfees {
    type: number
    sql: ${TABLE}.BVRFees ;;
  }

  dimension: bvrfees_without_vat {
    type: number
    sql: ${TABLE}.BVRFees_without_VAT ;;
  }

  dimension: carbon_compensation {
    type: number
    sql: ${TABLE}.CARBON_COMPENSATION ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: creation {
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
    sql: ${TABLE}.CREATION_TIME ;;
  }

  dimension: cumulus_product_points {
    type: number
    sql: ${TABLE}.CUMULUS_PRODUCT_POINTS ;;
  }

  dimension: cumulus_promotion_points {
    type: number
    sql: ${TABLE}.CUMULUS_PROMOTION_POINTS ;;
  }

  dimension: customer_delivery_channel_olap {
    type: string
    sql: ${TABLE}.Customer_Delivery_Channel_OLAP ;;
  }

  dimension: customers_activity_status_next_orders_olap {
    type: string
    sql: ${TABLE}.Customers_Activity_Status_Next_Orders_OLAP ;;
  }

  dimension: customers_activity_status_olap {
    type: string
    sql: ${TABLE}.Customers_Activity_Status_OLAP ;;
  }

  dimension: deleted {
    type: number
    sql: ${TABLE}.DELETED ;;
  }

  dimension: delivery_channel_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.DELIVERY_CHANNEL_ID_BK ;;
  }

  dimension_group: delivery_date_id_bk {
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
    sql: ${TABLE}.DELIVERY_DATE_ID_BK ;;
  }

  dimension_group: delivery_end {
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
    sql: ${TABLE}.DELIVERY_END_TIME ;;
  }

  dimension: delivery_fee {
    type: number
    sql: ${TABLE}.DELIVERY_FEE ;;
  }

  dimension: delivery_fee_frozen {
    type: number
    sql: ${TABLE}.DELIVERY_FEE_FROZEN ;;
  }

  dimension: delivery_fee_frozen_vat {
    type: number
    sql: ${TABLE}.DELIVERY_FEE_FROZEN_VAT ;;
  }

  dimension: delivery_fee_vat {
    type: number
    sql: ${TABLE}.DELIVERY_FEE_VAT ;;
  }

  dimension: delivery_mode {
    type: string
    sql: ${TABLE}.DELIVERY_MODE ;;
  }

  dimension: delivery_mode_last {
    type: string
    sql: ${TABLE}.DELIVERY_MODE_last ;;
  }

  dimension_group: delivery_start {
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
    sql: ${TABLE}.DELIVERY_START_TIME ;;
  }

  dimension: delivery_store_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.DELIVERY_STORE_ID_BK ;;
  }

  dimension: delivery_zip_bk {
    type: number
    sql: ${TABLE}.DELIVERY_ZIP_BK ;;
  }

  dimension: delivery_zip_key_name {
    type: string
    sql: ${TABLE}.DELIVERY_ZIP_KEY_NAME ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.DEVICE_NAME ;;
  }

  dimension: diff_basket_last_order {
    type: number
    sql: ${TABLE}.DIFF_BASKET_LAST_ORDER ;;
  }

  dimension: diff_basket_next_order {
    type: number
    sql: ${TABLE}.DIFF_BASKET_NEXT_ORDER ;;
  }

  dimension: diff_last_order_date_olap {
    type: string
    sql: ${TABLE}.Diff_last_order_date_OLAP ;;
  }

  dimension: diff_last_order_day {
    type: number
    sql: ${TABLE}.diff_last_order_day ;;
  }

  dimension: diff_last_order_day_smooth {
    type: number
    sql: ${TABLE}.diff_last_order_day_smooth ;;
  }

  dimension: diff_next_order_date_olap {
    type: string
    sql: ${TABLE}.Diff_next_order_date_OLAP ;;
  }

  dimension: diff_next_order_day {
    type: number
    sql: ${TABLE}.diff_next_order_day ;;
  }

  dimension: diff_opening_mail_order_date {
    type: number
    sql: ${TABLE}.DIFF_OPENING_MAIL_ORDER_DATE ;;
  }

  dimension: dim_basket_olap {
    type: string
    sql: ${TABLE}.dim_basket_OLAP ;;
  }

  dimension: dim_repeat_new {
    type: string
    sql: ${TABLE}.dim_Repeat_New ;;
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

  dimension: dwh_delivery_info_id {
    type: number
    sql: ${TABLE}.DWH_DELIVERY_INFO_ID ;;
  }

  dimension: dwh_order_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_ID ;;
  }

  dimension: dwh_order_last_six_digits_id {
    type: number
    sql: ${TABLE}.DWH_ORDER_LAST_SIX_DIGITS_ID ;;
  }

  dimension: dwh_vip_orders_id {
    type: number
    sql: ${TABLE}.DWH_VIP_ORDERS_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: estimated {
    type: yesno
    sql: ${TABLE}.ESTIMATED ;;
  }

  dimension: external_billing {
    type: number
    sql: ${TABLE}.EXTERNAL_BILLING ;;
  }

  dimension: external_delivery {
    type: number
    sql: ${TABLE}.EXTERNAL_DELIVERY ;;
  }

  dimension: five_orders_within_six_next_months {
    type: string
    sql: ${TABLE}.five_orders_within_six_next_months ;;
  }

  dimension: freshbag_caution {
    type: number
    sql: ${TABLE}.FRESHBAG_CAUTION ;;
  }

  dimension: freshbag_penalty_charges {
    type: number
    sql: ${TABLE}.FRESHBAG_PENALTY_CHARGES ;;
  }

  dimension: freshbag_penalty_charges_without_vat {
    type: number
    sql: ${TABLE}.FRESHBAG_PENALTY_CHARGES_without_VAT ;;
  }

  dimension: freshbag_returned {
    type: number
    sql: ${TABLE}.FRESHBAG_RETURNED ;;
  }

  dimension: frozen_fees_real {
    type: number
    sql: ${TABLE}.FROZEN_FEES_REAL ;;
  }

  dimension: frozen_fees_theorical {
    type: number
    sql: ${TABLE}.FROZEN_FEES_THEORICAL ;;
  }

  dimension: frozen_percentage_theorical {
    type: number
    sql: ${TABLE}.FROZEN_PERCENTAGE_THEORICAL ;;
  }

  dimension: frozendeposit {
    type: number
    sql: ${TABLE}.FROZENDEPOSIT ;;
  }

  dimension: hour_delivery_date {
    type: number
    sql: ${TABLE}.hour_DELIVERY_DATE ;;
  }

  dimension: hour_order_date {
    type: number
    sql: ${TABLE}.hour_ORDER_DATE ;;
  }

  dimension: house_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_BK ;;
  }

  dimension: house_id_five_orders_within_six_months {
    type: number
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_five_orders_within_six_months ;;
  }

  dimension: house_nb_order {
    type: number
    sql: ${TABLE}.HOUSE_NB_ORDER ;;
  }

  dimension: house_nb_order_olap {
    type: string
    sql: ${TABLE}.house_nb_order_OLAP ;;
  }

  dimension: house_nb_order_olap_niv_one {
    type: string
    sql: ${TABLE}.house_nb_order_OLAP_niv_one ;;
  }

  dimension: intrum_credit_score {
    type: string
    sql: ${TABLE}.INTRUM_CREDIT_SCORE ;;
  }

  dimension: lapse_evolution_days {
    type: number
    sql: ${TABLE}.lapse_evolution_days ;;
  }

  dimension: lapse_measure {
    type: number
    sql: ${TABLE}.lapse_measure ;;
  }

  dimension: lapse_volatility {
    type: number
    sql: ${TABLE}.lapse_volatility ;;
  }

  dimension: last_order {
    type: string
    sql: ${TABLE}.last_order ;;
  }

  dimension: last_order_olap {
    type: string
    sql: ${TABLE}.Last_Order_OLAP ;;
  }

  dimension: modification_state {
    type: number
    sql: ${TABLE}.MODIFICATION_STATE ;;
  }

  dimension: month_partitioning {
    type: number
    sql: ${TABLE}.MONTH_PARTITIONING ;;
  }

  dimension: nb_camion_per_order_estimation {
    type: number
    sql: ${TABLE}.nb_camion_per_order_estimation ;;
  }

  dimension: nb_days_between_order_and_delivery {
    type: number
    sql: ${TABLE}.Nb_days_between_order_and_delivery ;;
  }

  dimension: nb_days_between_order_and_picking {
    type: number
    sql: ${TABLE}.Nb_days_between_order_and_picking ;;
  }

  dimension: nb_dispo_boxes {
    type: number
    sql: ${TABLE}.nb_dispo_boxes ;;
  }

  dimension: nb_dispo_boxes_olap {
    type: string
    sql: ${TABLE}.nb_dispo_boxes_OLAP ;;
  }

  dimension: nb_fresh_bag {
    type: number
    sql: ${TABLE}.NbFreshBag ;;
  }

  dimension: nb_frozen_box_real {
    type: number
    sql: ${TABLE}.NB_FROZEN_BOX_REAL ;;
  }

  dimension: nb_frozen_box_real_olap {
    type: number
    sql: ${TABLE}.NB_FROZEN_BOX_REAL_OLAP ;;
  }

  dimension: nb_frozen_box_theorical {
    type: number
    sql: ${TABLE}.NB_FROZEN_BOX_THEORICAL ;;
  }

  dimension: nb_frozen_orders_less_more_box_than_expected_qty {
    type: number
    sql: ${TABLE}.nb_FROZEN_orders_less_more_box_than_expected_qty ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_nb_frozen_orders_less_more_box_than_expected_qty {
    type: sum
    sql: ${nb_frozen_orders_less_more_box_than_expected_qty} ;;
  }

  measure: average_nb_frozen_orders_less_more_box_than_expected_qty {
    type: average
    sql: ${nb_frozen_orders_less_more_box_than_expected_qty} ;;
  }

  dimension: nb_frozen_orders_with_less_box_than_expected {
    type: number
    sql: ${TABLE}.nb_FROZEN_orders_with_less_box_than_expected ;;
  }

  dimension: nb_frozen_orders_with_more_box_than_expected {
    type: number
    sql: ${TABLE}.nb_FROZEN_orders_with_more_box_than_expected ;;
  }

  dimension: nb_frozen_orders_with_more_box_than_expected_qty {
    type: number
    sql: ${TABLE}.nb_FROZEN_orders_with_more_box_than_expected_qty ;;
  }

  dimension: nb_lines {
    type: number
    sql: ${TABLE}.nb_lines ;;
  }

  dimension: nb_palette_per_order_estimation {
    type: number
    sql: ${TABLE}.nb_palette_per_order_estimation ;;
  }

  dimension: nb_time_between_order_and_delivery_begin {
    type: number
    sql: ${TABLE}.Nb_time_between_order_and_delivery_begin ;;
  }

  dimension: nb_time_between_order_and_delivery_end {
    type: number
    sql: ${TABLE}.Nb_time_between_order_and_delivery_end ;;
  }

  dimension: nb_time_between_order_and_delivery_middle {
    type: number
    sql: ${TABLE}.Nb_time_between_order_and_delivery_middle ;;
  }

  dimension: nb_time_between_order_and_picking {
    type: number
    sql: ${TABLE}.Nb_time_between_order_and_picking ;;
  }

  dimension: nb_yearly_orders_extrapoled {
    type: number
    sql: ${TABLE}.nb_yearly_orders_extrapoled ;;
  }

  dimension: order_credit_value {
    type: number
    sql: ${TABLE}.ORDER_CREDIT_VALUE ;;
  }

  dimension: order_credit_value_vat {
    type: number
    sql: ${TABLE}.ORDER_CREDIT_VALUE_VAT ;;
  }

  dimension: order_credit_value_without_vat {
    type: number
    sql: ${TABLE}.ORDER_CREDIT_VALUE_without_VAT ;;
  }

  dimension_group: order_date_id_bk {
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
    sql: ${TABLE}.ORDER_DATE_ID_BK ;;
  }

  dimension: order_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDER_ID_BK ;;
  }

  dimension: order_num_wims {
    type: number
    sql: ${TABLE}.ORDER_NUM_WIMS ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.ORDER_NUMBER ;;
  }

  dimension: order_number_num {
    type: number
    sql: ${TABLE}.ORDER_NUMBER_NUM ;;
  }

  dimension: order_state {
    type: number
    sql: ${TABLE}.ORDER_STATE ;;
  }

  dimension: orders_olap_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORDERS_OLAP_ID_BK ;;
  }

  dimension_group: picking_date_id_bk {
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
    sql: ${TABLE}.PICKING_DATE_ID_BK ;;
  }

  dimension: picking_type {
    type: number
    sql: ${TABLE}.PICKING_TYPE ;;
  }

  dimension: pickup_hour {
    type: number
    sql: ${TABLE}.PICKUP_HOUR ;;
  }

  dimension: pmt_type {
    type: string
    sql: ${TABLE}.PMT_TYPE ;;
  }

  dimension: pmt_type_parent {
    type: string
    sql: ${TABLE}.PMT_TYPE_Parent ;;
  }

  dimension: quantity_order_number {
    type: number
    sql: ${TABLE}.quantity_order_number ;;
  }

  dimension: rahmentour {
    type: string
    sql: ${TABLE}.RAHMENTOUR ;;
  }

  dimension: reminder_level {
    type: number
    sql: ${TABLE}.REMINDER_LEVEL ;;
  }

  dimension: reminder_level_olap {
    type: number
    sql: ${TABLE}.REMINDER_LEVEL_OLAP ;;
  }

  dimension: service_mode {
    type: string
    sql: ${TABLE}.SERVICE_MODE ;;
  }

  dimension: standard_shipping_fixed {
    type: number
    sql: ${TABLE}.STANDARD_SHIPPING_FIXED ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.STATUS ;;
  }

  dimension: store_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.STORE_ID_BK ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.SUBTOTAL ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
  }

  dimension: total_credits {
    type: number
    sql: ${TABLE}.TOTAL_CREDITS ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.TOTAL_DISCOUNT ;;
  }

  dimension: total_quality_drive_spec_issues {
    type: number
    sql: ${TABLE}.TOTAL_QUALITY_DRIVE_SPEC_ISSUES ;;
  }

  dimension: total_sales_vat_value {
    type: number
    sql: ${TABLE}.TOTAL_SALES_VAT_VALUE ;;
  }

  dimension: total_shipping {
    type: number
    sql: ${TABLE}.TOTAL_SHIPPING ;;
  }

  dimension: total_shipping_olap {
    type: number
    sql: ${TABLE}.Total_shipping_OLAP ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.TOTAL_WEIGHT ;;
  }

  dimension: user_abo_delivery_pass_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.USER_ABO_DELIVERY_PASS_ID_BK ;;
  }

  dimension: user_home_nb_order_olap {
    type: string
    sql: ${TABLE}.USER_Home_nb_order_OLAP ;;
  }

  dimension: user_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.USER_ID_BK ;;
  }

  dimension: user_nb_order_drive {
    type: number
    sql: ${TABLE}.USER_NB_ORDER_DRIVE ;;
  }

  dimension: user_nb_order_home {
    type: number
    sql: ${TABLE}.USER_NB_ORDER_HOME ;;
  }

  dimension: user_nb_order_rail {
    type: number
    sql: ${TABLE}.USER_NB_ORDER_RAIL ;;
  }

  dimension: vat_a {
    type: number
    sql: ${TABLE}.VAT_A ;;
  }

  dimension: vat_a_percent {
    type: number
    sql: ${TABLE}.VAT_A_PERCENT ;;
  }

  dimension: vat_b {
    type: number
    sql: ${TABLE}.VAT_B ;;
  }

  dimension: vat_b_percent {
    type: number
    sql: ${TABLE}.VAT_B_PERCENT ;;
  }

  dimension: vat_c {
    type: number
    sql: ${TABLE}.VAT_C ;;
  }

  dimension: volume_sku_liters {
    type: number
    sql: ${TABLE}.volume_SKU_liters ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }

  dimension: weight_sku_kg {
    type: number
    sql: ${TABLE}.weight_SKU_kg ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [delivery_zip_key_name, device_name]
  }
}

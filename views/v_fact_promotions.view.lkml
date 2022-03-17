# The name of this view in Looker is "V Fact Promotions"
view: v_fact_promotions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_promotions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Calendar Promo Creation ID" in Explore.

  dimension: dwh_calendar_promo_creation_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_PROMO_CREATION_ID ;;
  }

  dimension: dwh_calendar_promo_offline_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_PROMO_OFFLINE_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_promotion_id {
    type: number
    sql: ${TABLE}.DWH_PROMOTION_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: incentive_type {
    type: number
    sql: ${TABLE}.INCENTIVE_TYPE ;;
  }

  dimension: main_key_sku_dim_1 {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_1 ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: promo_automatic_process {
    type: yesno
    sql: ${TABLE}.PROMO_AUTOMATIC_PROCESS ;;
  }

  dimension: promo_category_id {
    type: number
    sql: ${TABLE}.PROMO_CATEGORY_ID ;;
  }

  dimension: promo_centoff {
    type: number
    sql: ${TABLE}.PROMO_CENTOFF ;;
  }

  dimension: promo_comment {
    type: string
    sql: ${TABLE}.PROMO_COMMENT ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: promo_creation {
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
    sql: ${TABLE}.PROMO_CREATION_DATE ;;
  }

  dimension: promo_current_status {
    type: number
    sql: ${TABLE}.PROMO_CURRENT_STATUS ;;
  }

  dimension: promo_deleted {
    type: yesno
    sql: ${TABLE}.PROMO_DELETED ;;
  }

  dimension: promo_hit {
    type: string
    sql: ${TABLE}.PROMO_HIT ;;
  }

  dimension: promo_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PROMO_ID_BK ;;
  }

  dimension: promo_ignore_synchro {
    type: yesno
    sql: ${TABLE}.PROMO_IGNORE_SYNCHRO ;;
  }

  dimension: promo_internal_description {
    type: string
    sql: ${TABLE}.PROMO_INTERNAL_DESCRIPTION ;;
  }

  dimension: promo_internal_name {
    type: string
    sql: ${TABLE}.PROMO_INTERNAL_NAME ;;
  }

  dimension: promo_is_on_product_label {
    type: yesno
    sql: ${TABLE}.PROMO_IS_ON_PRODUCT_LABEL ;;
  }

  dimension: promo_multi_pack {
    type: number
    sql: ${TABLE}.PROMO_MULTI_PACK ;;
  }

  dimension: promo_multi_pack_nr {
    type: number
    sql: ${TABLE}.PROMO_MULTI_PACK_NR ;;
  }

  dimension_group: promo_offline_date_bk {
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
    sql: ${TABLE}.PROMO_OFFLINE_DATE_BK ;;
  }

  dimension_group: promo_online_date_bk {
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
    sql: ${TABLE}.PROMO_ONLINE_DATE_BK ;;
  }

  dimension: promo_online_date_dim {
    type: number
    sql: ${TABLE}.PROMO_ONLINE_DATE_DIM ;;
  }

  dimension: promo_product_multiplier {
    type: number
    sql: ${TABLE}.PROMO_PRODUCT_MULTIPLIER ;;
  }

  dimension: promo_product_price_reduction {
    type: number
    sql: ${TABLE}.PROMO_PRODUCT_PRICE_REDUCTION ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_promo_product_price_reduction {
    type: sum
    sql: ${promo_product_price_reduction} ;;
  }

  measure: average_promo_product_price_reduction {
    type: average
    sql: ${promo_product_price_reduction} ;;
  }

  dimension: promo_product_purchase_price {
    type: number
    sql: ${TABLE}.PROMO_PRODUCT_PURCHASE_PRICE ;;
  }

  dimension: promo_product_selling_price {
    type: number
    sql: ${TABLE}.PROMO_PRODUCT_SELLING_PRICE ;;
  }

  dimension: promo_setup_cost {
    type: number
    sql: ${TABLE}.PROMO_SETUP_COST ;;
  }

  dimension: promo_setup_cost_type {
    type: string
    sql: ${TABLE}.PROMO_SETUP_COST_TYPE ;;
  }

  dimension: promo_slogan_de {
    type: string
    sql: ${TABLE}.PROMO_SLOGAN_DE ;;
  }

  dimension: promo_slogan_en {
    type: string
    sql: ${TABLE}.PROMO_SLOGAN_EN ;;
  }

  dimension: promo_slogan_fr {
    type: string
    sql: ${TABLE}.PROMO_SLOGAN_FR ;;
  }

  dimension: promo_type {
    type: number
    sql: ${TABLE}.PROMO_TYPE ;;
  }

  dimension: promo_use_per_purchase {
    type: number
    sql: ${TABLE}.PROMO_USE_PER_PURCHASE ;;
  }

  dimension: promo_validation_status {
    type: number
    sql: ${TABLE}.PROMO_VALIDATION_STATUS ;;
  }

  dimension: promotion_active {
    type: yesno
    sql: ${TABLE}.PROMOTION_ACTIVE ;;
  }

  dimension: promotion_duration {
    type: number
    sql: ${TABLE}.PROMOTION_DURATION ;;
  }

  dimension: promotion_pricing_rule {
    type: string
    sql: ${TABLE}.PROMOTION_PRICING_RULE ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }

  dimension: warehouse_id_olap {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_OLAP ;;
  }

  measure: count {
    type: count
    drill_fields: [promo_internal_name]
  }
}

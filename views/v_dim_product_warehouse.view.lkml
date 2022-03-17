# The name of this view in Looker is "V Dim Product Warehouse"
view: v_dim_product_warehouse {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_product_warehouse`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action ID" in Explore.

  dimension: action_id {
    type: string
    sql: ${TABLE}.ACTION_ID ;;
  }

  dimension: aop_conditional_product_id {
    type: number
    sql: ${TABLE}.AOP_CONDITIONAL_PRODUCT_ID ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}.AREA ;;
  }

  dimension: auto_ordering {
    type: yesno
    sql: ${TABLE}.AUTO_ORDERING ;;
  }

  dimension: automatic_rule_id {
    type: number
    sql: ${TABLE}.AUTOMATIC_RULE_ID ;;
  }

  dimension: bio_site_category {
    type: number
    sql: ${TABLE}.Bio_Site_Category ;;
  }

  dimension: boss_2 {
    type: string
    sql: ${TABLE}.Boss_2 ;;
  }

  dimension: boss_3 {
    type: string
    sql: ${TABLE}.Boss_3 ;;
  }

  dimension: boss_5 {
    type: string
    sql: ${TABLE}.Boss_5 ;;
  }

  dimension: boss_ad_hoc {
    type: string
    sql: ${TABLE}.Boss_AdHoc ;;
  }

  dimension: boss_bottom {
    type: string
    sql: ${TABLE}.Boss_bottom ;;
  }

  dimension: boss_code {
    type: string
    sql: ${TABLE}.BOSS_CODE ;;
  }

  dimension: boss_top {
    type: string
    sql: ${TABLE}.Boss_top ;;
  }

  dimension: cat1 {
    type: string
    sql: ${TABLE}.cat1 ;;
  }

  dimension: cat2 {
    type: string
    sql: ${TABLE}.cat2 ;;
  }

  dimension: cat3 {
    type: string
    sql: ${TABLE}.cat3 ;;
  }

  dimension: cat4 {
    type: string
    sql: ${TABLE}.cat4 ;;
  }

  dimension: cat_frozen {
    type: string
    sql: ${TABLE}.cat_Frozen ;;
  }

  dimension: cattop {
    type: string
    sql: ${TABLE}.cattop ;;
  }

  dimension: class_customer_value_score {
    type: string
    sql: ${TABLE}.CLASS_CUSTOMER_VALUE_SCORE ;;
  }

  dimension: class_nb_households {
    type: string
    sql: ${TABLE}.CLASS_NB_HOUSEHOLDS ;;
  }

  dimension: class_nb_orders_penetration {
    type: string
    sql: ${TABLE}.CLASS_NB_ORDERS_PENETRATION ;;
  }

  dimension: class_repeat_purchase_frequency {
    type: string
    sql: ${TABLE}.CLASS_REPEAT_PURCHASE_FREQUENCY ;;
  }

  dimension: class_sales_in_promo {
    type: string
    sql: ${TABLE}.CLASS_SALES_IN_PROMO ;;
  }

  dimension: class_sales_vp_wo_vat {
    type: string
    sql: ${TABLE}.CLASS_SALES_VP_WO_VAT ;;
  }

  dimension: class_substitution {
    type: string
    sql: ${TABLE}.CLASS_SUBSTITUTION ;;
  }

  dimension: class_total_basket_generated_wo_vat {
    type: string
    sql: ${TABLE}.CLASS_TOTAL_BASKET_GENERATED_WO_VAT ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_ready_to_be_ordered {
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
    sql: ${TABLE}.DATE_READY_TO_BE_ORDERED ;;
  }

  dimension: ds_vp_normal_corr_poids_variable {
    type: number
    sql: ${TABLE}.DS_VP_Normal_CORR_POIDS_VARIABLE ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: einkaufer {
    type: string
    sql: ${TABLE}.Einkaufer ;;
  }

  dimension_group: first_cust_purchase {
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
    sql: ${TABLE}.first_cust_purchase ;;
  }

  dimension: fresh_or_dry {
    type: string
    sql: ${TABLE}.Fresh_or_Dry ;;
  }

  dimension: linked_ean {
    type: string
    sql: ${TABLE}.LINKED_EAN ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: location_1_zone {
    type: string
    sql: ${TABLE}.LOCATION_1_ZONE ;;
  }

  dimension: location_2_couloir_gang {
    type: string
    sql: ${TABLE}.LOCATION_2_Couloir_Gang ;;
  }

  dimension: location_3_etag_re_gestell {
    type: string
    sql: ${TABLE}.LOCATION_3_Etag_re_Gestell ;;
  }

  dimension: location_3_etag_re_gestell_hauteur_h_he {
    type: string
    sql: ${TABLE}.LOCATION_3_Etag_re_Gestell_HAUTEUR_H_HE ;;
  }

  dimension: location_info_depth {
    type: number
    sql: ${TABLE}.LOCATION_INFO_DEPTH ;;
  }

  dimension: location_info_height {
    type: number
    sql: ${TABLE}.LOCATION_INFO_HEIGHT ;;
  }

  dimension: location_info_logistic_unit_id {
    type: string
    sql: ${TABLE}.LOCATION_INFO_LOGISTIC_UNIT_ID ;;
  }

  dimension: location_info_pickable_qty_possible_in_loc {
    type: number
    sql: ${TABLE}.LOCATION_INFO_PICKABLE_QTY_POSSIBLE_IN_LOC ;;
  }

  dimension: location_level_1 {
    type: string
    sql: ${TABLE}.LOCATION_LEVEL_1 ;;
  }

  dimension: location_level_2 {
    type: string
    sql: ${TABLE}.LOCATION_LEVEL_2 ;;
  }

  dimension: location_level_3 {
    type: string
    sql: ${TABLE}.LOCATION_LEVEL_3 ;;
  }

  dimension: location_product_description_logistics {
    type: string
    sql: ${TABLE}.LOCATION_PRODUCT_DESCRIPTION_LOGISTICS ;;
  }

  dimension: location_shelf_column {
    type: string
    sql: ${TABLE}.LOCATION_SHELF_COLUMN ;;
  }

  dimension: location_shelf_lr {
    type: string
    sql: ${TABLE}.LOCATION_SHELF_LR ;;
  }

  dimension: location_top {
    type: string
    sql: ${TABLE}.LOCATION_top ;;
  }

  dimension: lr {
    type: string
    sql: ${TABLE}.LR ;;
  }

  dimension: m_boss_bereich {
    type: string
    sql: ${TABLE}.M_BOSS_BEREICH ;;
  }

  dimension: m_boss_code {
    type: string
    sql: ${TABLE}.M_BOSS_CODE ;;
  }

  dimension: m_boss_families {
    type: string
    sql: ${TABLE}.M_BOSS_FAMILIES ;;
  }

  dimension: m_boss_thema {
    type: string
    sql: ${TABLE}.M_BOSS_THEMA ;;
  }

  dimension: m_boss_verkaufsektor {
    type: string
    sql: ${TABLE}.M_BOSS_VERKAUFSEKTOR ;;
  }

  dimension: m_boss_welt {
    type: string
    sql: ${TABLE}.M_BOSS_WELT ;;
  }

  dimension: main_key_sku_dim_1_bk {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_1_BK ;;
  }

  dimension: max_order_date_dim {
    type: number
    sql: ${TABLE}.max_ORDER_DATE_DIM ;;
  }

  dimension: migros_article_number {
    type: string
    sql: ${TABLE}.MIGROS_ARTICLE_NUMBER ;;
  }

  dimension: min_order_date_dim {
    type: number
    sql: ${TABLE}.min_ORDER_DATE_DIM ;;
  }

  dimension: min_stock_mvt_dates_dim {
    type: number
    sql: ${TABLE}.min_STOCK_mvt_DATES_DIM ;;
  }

  dimension: nutrient_added_salt_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ADDED_SALT_CATEGORY ;;
  }

  dimension: nutrient_added_salt_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ADDED_SALT_COLOR_CATEGORY ;;
  }

  dimension: nutrient_energy_kcal_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ENERGY_KCAL_CATEGORY ;;
  }

  dimension: nutrient_energy_kcal_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ENERGY_KCAL_COLOR_CATEGORY ;;
  }

  dimension: nutrient_energy_kj_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ENERGY_KJ_CATEGORY ;;
  }

  dimension: nutrient_energy_kj_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ENERGY_KJ_COLOR_CATEGORY ;;
  }

  dimension: nutrient_fiber_category {
    type: string
    sql: ${TABLE}.NUTRIENT_FIBER_CATEGORY ;;
  }

  dimension: nutrient_fiber_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_FIBER_COLOR_CATEGORY ;;
  }

  dimension: nutrient_lipid_category {
    type: string
    sql: ${TABLE}.NUTRIENT_LIPID_CATEGORY ;;
  }

  dimension: nutrient_lipid_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_LIPID_COLOR_CATEGORY ;;
  }

  dimension: nutrient_only_sugar_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ONLY_SUGAR_CATEGORY ;;
  }

  dimension: nutrient_only_sugar_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_ONLY_SUGAR_COLOR_CATEGORY ;;
  }

  dimension: nutrient_protein_category {
    type: string
    sql: ${TABLE}.NUTRIENT_PROTEIN_CATEGORY ;;
  }

  dimension: nutrient_protein_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_PROTEIN_COLOR_CATEGORY ;;
  }

  dimension: nutrient_reference_size {
    type: string
    sql: ${TABLE}.NUTRIENT_REFERENCE_SIZE ;;
  }

  dimension: nutrient_saturated_fat_category {
    type: string
    sql: ${TABLE}.NUTRIENT_SATURATED_FAT_CATEGORY ;;
  }

  dimension: nutrient_saturated_fat_color_category {
    type: string
    sql: ${TABLE}.NUTRIENT_SATURATED_FAT_COLOR_CATEGORY ;;
  }

  dimension: online_text {
    type: string
    sql: ${TABLE}.ONLINE_TEXT ;;
  }

  dimension: partner_number {
    type: string
    sql: ${TABLE}.PARTNER_NUMBER ;;
  }

  dimension: permission_id {
    type: number
    sql: ${TABLE}.PERMISSION_ID ;;
  }

  dimension: picking_zone_description {
    type: string
    sql: ${TABLE}.Picking_Zone_DESCRIPTION ;;
  }

  dimension: product_avg_weight {
    type: number
    sql: ${TABLE}.PRODUCT_AVG_WEIGHT ;;
  }

  dimension: product_bio {
    type: string
    sql: ${TABLE}.PRODUCT_BIO ;;
  }

  dimension: product_box_depth {
    type: number
    sql: ${TABLE}.PRODUCT_BOX_DEPTH ;;
  }

  dimension: product_box_height {
    type: number
    sql: ${TABLE}.PRODUCT_BOX_HEIGHT ;;
  }

  dimension: product_box_weight {
    type: number
    sql: ${TABLE}.PRODUCT_BOX_WEIGHT ;;
  }

  dimension: product_box_width {
    type: number
    sql: ${TABLE}.PRODUCT_BOX_WIDTH ;;
  }

  dimension: product_brand_active {
    type: string
    sql: ${TABLE}.PRODUCT_BRAND_active ;;
  }

  dimension: product_brandline_active {
    type: string
    sql: ${TABLE}.PRODUCT_BRANDLINE_active ;;
  }

  dimension_group: product_creation {
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
    sql: ${TABLE}.PRODUCT_CREATION_DATE ;;
  }

  dimension: product_creation_date_dim {
    type: number
    sql: ${TABLE}.PRODUCT_CREATION_DATE_DIM ;;
  }

  dimension_group: product_date_set_offline {
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
    sql: ${TABLE}.PRODUCT_DATE_SET_OFFLINE ;;
  }

  dimension_group: product_date_set_online {
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
    sql: ${TABLE}.PRODUCT_DATE_SET_ONLINE ;;
  }

  dimension: product_dept {
    type: string
    sql: ${TABLE}.PRODUCT_DEPT ;;
  }

  dimension: product_depth {
    type: number
    sql: ${TABLE}.PRODUCT_DEPTH ;;
  }

  dimension: product_description_logistics {
    type: string
    sql: ${TABLE}.PRODUCT_DESCRIPTION_LOGISTICS ;;
  }

  dimension: product_description_sales {
    type: string
    sql: ${TABLE}.PRODUCT_DESCRIPTION_SALES ;;
  }

  dimension: product_ean {
    type: string
    sql: ${TABLE}.PRODUCT_EAN ;;
  }

  dimension: product_eco_friendly {
    type: yesno
    sql: ${TABLE}.PRODUCT_ECO_FRIENDLY ;;
  }

  dimension: product_expirationdelayin {
    type: number
    sql: ${TABLE}.PRODUCT_EXPIRATIONDELAYIN ;;
  }

  dimension: product_expirationdelayin_minus_out {
    type: number
    sql: ${TABLE}.PRODUCT_EXPIRATIONDELAYIN_minus_OUT ;;
  }

  dimension: product_expirationdelayout {
    type: number
    sql: ${TABLE}.PRODUCT_EXPIRATIONDELAYOUT ;;
  }

  dimension: product_gluten_free {
    type: string
    sql: ${TABLE}.PRODUCT_GLUTEN_FREE ;;
  }

  dimension: product_guarantee {
    type: number
    sql: ${TABLE}.PRODUCT_GUARANTEE ;;
  }

  dimension: product_height {
    type: number
    sql: ${TABLE}.PRODUCT_HEIGHT ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: product_is_cumulus {
    type: yesno
    sql: ${TABLE}.PRODUCT_IS_CUMULUS ;;
  }

  dimension: product_is_cumulus_txt {
    type: string
    sql: ${TABLE}.PRODUCT_IS_CUMULUS_TXT ;;
  }

  dimension: product_is_external {
    type: yesno
    sql: ${TABLE}.PRODUCT_IS_EXTERNAL ;;
  }

  dimension: product_is_external_txt {
    type: string
    sql: ${TABLE}.PRODUCT_IS_EXTERNAL_TXT ;;
  }

  dimension: product_is_signed {
    type: yesno
    sql: ${TABLE}.PRODUCT_IS_SIGNED ;;
  }

  dimension: product_is_signed_txt {
    type: string
    sql: ${TABLE}.PRODUCT_IS_SIGNED_TXT ;;
  }

  dimension: product_lactose_free {
    type: string
    sql: ${TABLE}.PRODUCT_LACTOSE_FREE ;;
  }

  dimension_group: product_last_mod {
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
    sql: ${TABLE}.PRODUCT_LAST_MOD_DATE ;;
  }

  dimension: product_life_time {
    type: string
    sql: ${TABLE}.PRODUCT_LIFE_TIME ;;
  }

  dimension: product_light {
    type: string
    sql: ${TABLE}.PRODUCT_LIGHT ;;
  }

  dimension: product_liters {
    type: number
    sql: ${TABLE}.PRODUCT_LITERS ;;
  }

  dimension: product_logistics_volume {
    type: number
    sql: ${TABLE}.PRODUCT_LOGISTICS_VOLUME ;;
  }

  dimension: product_logistics_weight {
    type: number
    sql: ${TABLE}.PRODUCT_LOGISTICS_WEIGHT ;;
  }

  dimension: product_loyalty_total {
    type: number
    sql: ${TABLE}.PRODUCT_LOYALTY_TOTAL ;;
  }

  dimension: product_mandatory {
    type: yesno
    sql: ${TABLE}.PRODUCT_MANDATORY ;;
  }

  dimension: product_manufacturer_active {
    type: string
    sql: ${TABLE}.PRODUCT_MANUFACTURER_active ;;
  }

  dimension: product_maxquantity {
    type: number
    sql: ${TABLE}.PRODUCT_MAXQUANTITY ;;
  }

  dimension: product_migros_brand_strategy {
    type: string
    sql: ${TABLE}.PRODUCT_MIGROS_BRAND_STRATEGY ;;
  }

  dimension: product_minimum_size {
    type: number
    sql: ${TABLE}.PRODUCT_MINIMUM_SIZE ;;
  }

  dimension: product_multiplier {
    type: number
    sql: ${TABLE}.PRODUCT_MULTIPLIER ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: product_nbofunit {
    type: number
    sql: ${TABLE}.PRODUCT_NBOFUNIT ;;
  }

  dimension: product_new_flag {
    type: number
    sql: ${TABLE}.PRODUCT_NEW_FLAG ;;
  }

  dimension: product_new_flag_text {
    type: string
    sql: ${TABLE}.PRODUCT_NEW_FLAG_TEXT ;;
  }

  dimension_group: product_newflag {
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
    sql: ${TABLE}.PRODUCT_NEWFLAG_DATE ;;
  }

  dimension: product_of_switzerland {
    type: string
    sql: ${TABLE}.PRODUCT_OF_SWITZERLAND ;;
  }

  dimension: product_owner {
    type: string
    sql: ${TABLE}.PRODUCT_OWNER ;;
  }

  dimension: product_partner {
    type: string
    sql: ${TABLE}.PRODUCT_PARTNER ;;
  }

  dimension: product_property {
    type: string
    sql: ${TABLE}.PRODUCT_PROPERTY ;;
  }

  dimension_group: product_purchase_change {
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
    sql: ${TABLE}.PRODUCT_PURCHASE_CHANGE_DATE ;;
  }

  dimension: product_purchase_price {
    type: number
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

  dimension: product_purchase_price_corr_poids_variable {
    type: number
    sql: ${TABLE}.PRODUCT_PURCHASE_PRICE_CORR_POIDS_VARIABLE ;;
  }

  dimension: product_purchasemodel_id {
    type: number
    sql: ${TABLE}.PRODUCT_PURCHASEMODEL_ID ;;
  }

  dimension: product_purchaseunitperpack_pupp {
    type: number
    sql: ${TABLE}.PRODUCT_PURCHASEUNITPERPACK_PUPP ;;
  }

  dimension_group: product_selling_change {
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
    sql: ${TABLE}.PRODUCT_SELLING_CHANGE_DATE ;;
  }

  dimension: product_selling_price {
    type: number
    sql: ${TABLE}.PRODUCT_SELLING_PRICE ;;
  }

  dimension: product_selling_price_corr_poids_variable {
    type: number
    sql: ${TABLE}.PRODUCT_SELLING_PRICE_CORR_POIDS_VARIABLE ;;
  }

  dimension: product_sizeproduct {
    type: number
    sql: ${TABLE}.PRODUCT_SIZEPRODUCT ;;
  }

  dimension: product_status {
    type: number
    sql: ${TABLE}.PRODUCT_STATUS ;;
  }

  dimension_group: product_status {
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
    sql: ${TABLE}.PRODUCT_STATUS_DATE ;;
  }

  dimension: product_status_text {
    type: string
    sql: ${TABLE}.PRODUCT_STATUS_TEXT ;;
  }

  dimension: product_store {
    type: number
    sql: ${TABLE}.PRODUCT_STORE ;;
  }

  dimension: product_store_id {
    type: number
    sql: ${TABLE}.PRODUCT_STORE_ID ;;
  }

  dimension: product_taxrate_txt {
    type: string
    sql: ${TABLE}.PRODUCT_TAXRATE_TXT ;;
  }

  dimension: product_translation_desc {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_DESC ;;
  }

  dimension: product_translation_desc_de {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_DESC_DE ;;
  }

  dimension: product_translation_desc_en {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_DESC_EN ;;
  }

  dimension: product_translation_desc_fr {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_DESC_FR ;;
  }

  dimension: product_translation_desc_it {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_DESC_IT ;;
  }

  dimension: product_translation_name {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_NAME ;;
  }

  dimension: product_translation_name_de {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_NAME_DE ;;
  }

  dimension: product_translation_name_en {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_NAME_EN ;;
  }

  dimension: product_translation_name_fr {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_NAME_FR ;;
  }

  dimension: product_translation_name_it {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_NAME_IT ;;
  }

  dimension: product_translation_origin {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_ORIGIN ;;
  }

  dimension: product_translation_origin_de {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_ORIGIN_DE ;;
  }

  dimension: product_translation_origin_en {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_ORIGIN_EN ;;
  }

  dimension: product_translation_origin_fr {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_ORIGIN_FR ;;
  }

  dimension: product_translation_origin_it {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_ORIGIN_IT ;;
  }

  dimension: product_translation_versioning {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_VERSIONING ;;
  }

  dimension: product_translation_versioning_de {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_VERSIONING_DE ;;
  }

  dimension: product_translation_versioning_en {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_VERSIONING_EN ;;
  }

  dimension: product_translation_versioning_fr {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_VERSIONING_FR ;;
  }

  dimension: product_translation_versioning_it {
    type: string
    sql: ${TABLE}.PRODUCT_TRANSLATION_VERSIONING_IT ;;
  }

  dimension: product_unit_text {
    type: string
    sql: ${TABLE}.PRODUCT_UNIT_TEXT ;;
  }

  dimension: product_variable_weight_olap {
    type: string
    sql: ${TABLE}.PRODUCT_VARIABLE_WEIGHT_OLAP ;;
  }

  dimension: product_vegan {
    type: string
    sql: ${TABLE}.PRODUCT_VEGAN ;;
  }

  dimension: product_vegetarian {
    type: string
    sql: ${TABLE}.PRODUCT_VEGETARIAN ;;
  }

  dimension: product_warehousecomments {
    type: string
    sql: ${TABLE}.PRODUCT_WAREHOUSECOMMENTS ;;
  }

  dimension: product_weight {
    type: number
    sql: ${TABLE}.PRODUCT_WEIGHT ;;
  }

  dimension: product_weight_kg {
    type: number
    sql: ${TABLE}.PRODUCT_WEIGHT_kg ;;
  }

  dimension: product_weight_kg_olap {
    type: number
    sql: ${TABLE}.PRODUCT_WEIGHT_Kg_OLAP ;;
  }

  dimension: product_width {
    type: number
    sql: ${TABLE}.PRODUCT_WIDTH ;;
  }

  dimension: retailer_reliability {
    type: number
    sql: ${TABLE}.RETAILER_RELIABILITY ;;
  }

  dimension: sales_classification_per_lager {
    type: string
    sql: ${TABLE}.SALES_CLASSIFICATION_PER_LAGER ;;
  }

  dimension: specialpurchaseunit_spu {
    type: number
    sql: ${TABLE}.SPECIALPURCHASEUNIT_SPU ;;
  }

  dimension: stat_daily_sales {
    type: number
    sql: ${TABLE}.STAT_DAILY_SALES ;;
  }

  dimension: stat_stock_threshold {
    type: number
    sql: ${TABLE}.STAT_STOCK_THRESHOLD ;;
  }

  dimension: stat_stock_threshold_types {
    type: number
    sql: ${TABLE}.STAT_STOCK_THRESHOLD_TYPES ;;
  }

  dimension: statistic_wholesale {
    type: number
    sql: ${TABLE}.STATISTIC_WHOLESALE ;;
  }

  dimension: statistics_wholesale_name_distributor_active {
    type: string
    sql: ${TABLE}.STATISTICS_WHOLESALE_NAME_DISTRIBUTOR_active ;;
  }

  dimension: stock_ep_ {
    type: number
    sql: ${TABLE}.stock_EP_ ;;
  }

  dimension: stock_maximum_location_qty {
    type: number
    sql: ${TABLE}.STOCK_MAXIMUM_LOCATION_QTY ;;
  }

  dimension: stock_quantity {
    type: number
    sql: ${TABLE}.STOCK_QUANTITY ;;
  }

  dimension_group: stock_quantity {
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
    sql: ${TABLE}.STOCK_QUANTITY_DATE ;;
  }

  dimension: stock_quantity_ep {
    type: number
    sql: ${TABLE}.STOCK_QUANTITY_EP ;;
  }

  dimension: stock_quantity_product_liters {
    type: number
    sql: ${TABLE}.STOCK_QUANTITY_PRODUCT_LITERS ;;
  }

  dimension: stock_quantity_product_weight_kg {
    type: number
    sql: ${TABLE}.STOCK_QUANTITY_PRODUCT_WEIGHT_kg ;;
  }

  dimension: stock_safety {
    type: number
    sql: ${TABLE}.STOCK_SAFETY ;;
  }

  dimension: stock_threshold_security {
    type: number
    sql: ${TABLE}.STOCK_THRESHOLD_SECURITY ;;
  }

  dimension: temperature_id_txt {
    type: string
    sql: ${TABLE}.temperature_id_TXT ;;
  }

  dimension: user_rule_id {
    type: number
    sql: ${TABLE}.USER_RULE_ID ;;
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

  dimension: wholesale_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WHOLESALE_ID_BK ;;
  }

  dimension: wholesale_name_active {
    type: string
    sql: ${TABLE}.WHOLESALE_NAME_active ;;
  }

  dimension: wholesale_order_minimum_qty {
    type: number
    sql: ${TABLE}.WHOLESALE_ORDER_MINIMUM_QTY ;;
  }

  dimension: wholesale_product_id {
    type: string
    sql: ${TABLE}.WHOLESALE_PRODUCT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, product_translation_name]
  }
}

# The name of this view in Looker is "V Dim Xca Links"
view: v_dim_xca_links {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_xca_links`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attribute Alias" in Explore.

  dimension: attribute_alias {
    type: string
    sql: ${TABLE}.ATTRIBUTE_ALIAS ;;
  }

  dimension: category_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.CATEGORY_ID_BK ;;
  }

  dimension: category_level0 {
    type: string
    sql: ${TABLE}.CATEGORY_LEVEL0 ;;
  }

  dimension: dwh_category_id {
    type: number
    sql: ${TABLE}.DWH_CATEGORY_ID ;;
  }

  dimension: dwh_links_id {
    type: number
    sql: ${TABLE}.DWH_LINKS_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_product_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_PRODUCT_WAREHOUSE_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.LANG ;;
  }

  dimension: link_description {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION ;;
  }

  dimension: link_description_advertiser {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_ADVERTISER ;;
  }

  dimension: link_description_brand_topic {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_BRAND_TOPIC ;;
  }

  dimension: link_description_campaign_week {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_CAMPAIGN_WEEK ;;
  }

  dimension: link_description_fulfilment {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_FULFILMENT ;;
  }

  dimension: link_description_subject {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_SUBJECT ;;
  }

  dimension: link_description_vessel {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_VESSEL ;;
  }

  dimension: link_description_year {
    type: string
    sql: ${TABLE}.LINK_DESCRIPTION_YEAR ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.LINK_ID ;;
  }

  dimension: link_mode {
    type: string
    sql: ${TABLE}.LINK_MODE ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.LINK_URL ;;
  }

  dimension: link_variant_id {
    type: number
    sql: ${TABLE}.LINK_VARIANT_ID ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: main_key_sku_dim_1_bk {
    type: number
    sql: ${TABLE}.MAIN_KEY_SKU_DIM_1_BK ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_main_key_sku_dim_1_bk {
    type: sum
    sql: ${main_key_sku_dim_1_bk} ;;
  }

  measure: average_main_key_sku_dim_1_bk {
    type: average
    sql: ${main_key_sku_dim_1_bk} ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}.VARIANT ;;
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

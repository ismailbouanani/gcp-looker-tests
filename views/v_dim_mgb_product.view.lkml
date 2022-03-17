# The name of this view in Looker is "V Dim Mgb Product"
view: v_dim_mgb_product {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_mgb_product`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Mgb Product ID" in Explore.

  dimension: dwh_mgb_product_id {
    type: number
    sql: ${TABLE}.DWH_MGB_PRODUCT_ID ;;
  }

  dimension: m_boss_bereich_id {
    type: number
    sql: ${TABLE}.M_BOSS_BEREICH_ID ;;
  }

  dimension: m_boss_bereich_name {
    type: string
    sql: ${TABLE}.M_BOSS_BEREICH_NAME ;;
  }

  dimension: m_boss_code {
    type: number
    sql: ${TABLE}.M_BOSS_CODE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_m_boss_code {
    type: sum
    sql: ${m_boss_code} ;;
  }

  measure: average_m_boss_code {
    type: average
    sql: ${m_boss_code} ;;
  }

  dimension: m_boss_familie_id {
    type: number
    sql: ${TABLE}.M_BOSS_FAMILIE_ID ;;
  }

  dimension: m_boss_familie_name {
    type: string
    sql: ${TABLE}.M_BOSS_FAMILIE_NAME ;;
  }

  dimension: m_boss_thema_id {
    type: number
    sql: ${TABLE}.M_BOSS_THEMA_ID ;;
  }

  dimension: m_boss_thema_name {
    type: string
    sql: ${TABLE}.M_BOSS_THEMA_NAME ;;
  }

  dimension: m_boss_verkaufsektor_id {
    type: number
    sql: ${TABLE}.M_BOSS_VERKAUFSEKTOR_ID ;;
  }

  dimension: m_boss_verkaufsektor_name {
    type: string
    sql: ${TABLE}.M_BOSS_VERKAUFSEKTOR_NAME ;;
  }

  dimension: m_boss_welt_name {
    type: string
    sql: ${TABLE}.M_BOSS_WELT_NAME ;;
  }

  dimension: m_bosswelt_id {
    type: number
    sql: ${TABLE}.M_BOSSWELT_ID ;;
  }

  dimension: mgb_product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.MGB_PRODUCT_ID_BK ;;
  }

  dimension: product_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRODUCT_ID_BK ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      m_boss_familie_name,
      m_boss_thema_name,
      m_boss_bereich_name,
      product_name,
      m_boss_welt_name,
      m_boss_verkaufsektor_name
    ]
  }
}

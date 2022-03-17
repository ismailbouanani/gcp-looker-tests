# The name of this view in Looker is "V Dim Category"
view: v_dim_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_category`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bv Synchro Flag" in Explore.

  dimension: bv_synchro_flag {
    type: number
    sql: ${TABLE}.BV_SYNCHRO_FLAG ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bv_synchro_flag {
    type: sum
    sql: ${bv_synchro_flag} ;;
  }

  measure: average_bv_synchro_flag {
    type: average
    sql: ${bv_synchro_flag} ;;
  }

  dimension: category_bv_oid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CATEGORY_BV_OID ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CATEGORY_ID ;;
  }

  dimension: category_level {
    type: number
    sql: ${TABLE}.CATEGORY_LEVEL ;;
  }

  dimension: category_name_de {
    type: string
    sql: ${TABLE}.CATEGORY_NAME_DE ;;
  }

  dimension: category_name_en {
    type: string
    sql: ${TABLE}.CATEGORY_NAME_EN ;;
  }

  dimension: category_name_fr {
    type: string
    sql: ${TABLE}.CATEGORY_NAME_FR ;;
  }

  dimension: category_path_name {
    type: string
    sql: ${TABLE}.CATEGORY_PATH_NAME ;;
  }

  dimension: category_promotion {
    type: yesno
    sql: ${TABLE}.CATEGORY_PROMOTION ;;
  }

  dimension: category_sort_priority {
    type: number
    sql: ${TABLE}.CATEGORY_SORT_PRIORITY ;;
  }

  dimension: category_status {
    type: yesno
    sql: ${TABLE}.CATEGORY_STATUS ;;
  }

  dimension: clean_category_name_de {
    type: string
    sql: ${TABLE}.CLEAN_CATEGORY_NAME_DE ;;
  }

  dimension: clean_category_name_en {
    type: string
    sql: ${TABLE}.CLEAN_CATEGORY_NAME_EN ;;
  }

  dimension: clean_category_name_fr {
    type: string
    sql: ${TABLE}.CLEAN_CATEGORY_NAME_FR ;;
  }

  dimension: dwh_category_id {
    type: number
    sql: ${TABLE}.DWH_CATEGORY_ID ;;
  }

  dimension: is_new_category {
    type: yesno
    sql: ${TABLE}.IS_NEW_CATEGORY ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_mod {
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
    sql: ${TABLE}.LAST_MOD_DATE ;;
  }

  dimension: ls_user_id {
    type: number
    sql: ${TABLE}.LS_USER_ID ;;
  }

  dimension: parent_category_id {
    type: number
    sql: ${TABLE}.PARENT_CATEGORY_ID ;;
  }

  dimension: path_level_0 {
    type: string
    sql: ${TABLE}.PATH_LEVEL_0 ;;
  }

  dimension: path_level_1 {
    type: string
    sql: ${TABLE}.PATH_LEVEL_1 ;;
  }

  dimension: path_level_2 {
    type: string
    sql: ${TABLE}.PATH_LEVEL_2 ;;
  }

  dimension: path_level_3 {
    type: string
    sql: ${TABLE}.PATH_LEVEL_3 ;;
  }

  dimension: path_level_4 {
    type: string
    sql: ${TABLE}.PATH_LEVEL_4 ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.STYLE ;;
  }

  measure: count {
    type: count
    drill_fields: [category_path_name]
  }
}

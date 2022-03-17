# The name of this view in Looker is "V Dim Mgb Store"
view: v_dim_mgb_store {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_mgb_store`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Mgb Store ID" in Explore.

  dimension: dwh_mgb_store_id {
    type: number
    sql: ${TABLE}.DWH_MGB_STORE_ID ;;
  }

  dimension: dwh_pickup_store_id {
    type: number
    sql: ${TABLE}.DWH_PICKUP_STORE_ID ;;
  }

  dimension: mgb_store_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.MGB_STORE_ID_BK ;;
  }

  dimension: store_address {
    type: string
    sql: ${TABLE}.STORE_ADDRESS ;;
  }

  dimension: store_city {
    type: string
    sql: ${TABLE}.STORE_CITY ;;
  }

  dimension: store_latitude {
    type: number
    sql: ${TABLE}.STORE_LATITUDE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_store_latitude {
    type: sum
    sql: ${store_latitude} ;;
  }

  measure: average_store_latitude {
    type: average
    sql: ${store_latitude} ;;
  }

  dimension: store_longtitude {
    type: number
    sql: ${TABLE}.STORE_LONGTITUDE ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.STORE_TYPE ;;
  }

  dimension: store_zip {
    type: string
    sql: ${TABLE}.STORE_ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}

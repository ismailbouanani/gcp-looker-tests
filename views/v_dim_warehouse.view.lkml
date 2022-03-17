# The name of this view in Looker is "V Dim Warehouse"
view: v_dim_warehouse {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_warehouse`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Warehouse Activation Date ID" in Explore.

  dimension: dwh_warehouse_activation_date_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ACTIVATION_DATE_ID ;;
  }

  dimension: dwh_warehouse_closing_date_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_CLOSING_DATE_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: warehouse_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.WAREHOUSE_ID_BK ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: warehouse_name_bottom {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME_Bottom ;;
  }

  dimension: warehouse_name_top {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME_top ;;
  }

  dimension: warehouse_short_abbreviation {
    type: string
    sql: ${TABLE}.WAREHOUSE_SHORT_ABBREVIATION ;;
  }

  dimension: warehouse_short_type {
    type: string
    sql: ${TABLE}.WAREHOUSE_SHORT_TYPE ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}.WAREHOUSE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}

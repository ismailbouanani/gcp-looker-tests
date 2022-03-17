# The name of this view in Looker is "V Dim Vip Orders"
view: v_dim_vip_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_vip_orders`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Vip Orders ID" in Explore.

  dimension: dwh_vip_orders_id {
    type: number
    sql: ${TABLE}.DWH_VIP_ORDERS_ID ;;
  }

  dimension: slot_used {
    type: string
    sql: ${TABLE}.SLOT_USED ;;
  }

  dimension: vip {
    type: number
    sql: ${TABLE}.VIP ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_vip {
    type: sum
    sql: ${vip} ;;
  }

  measure: average_vip {
    type: average
    sql: ${vip} ;;
  }

  dimension: vip_customer {
    type: string
    sql: ${TABLE}.VIP_CUSTOMER ;;
  }

  dimension: vip_text {
    type: string
    sql: ${TABLE}.VIP_TEXT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

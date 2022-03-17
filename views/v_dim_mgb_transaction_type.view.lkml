# The name of this view in Looker is "V Dim Mgb Transaction Type"
view: v_dim_mgb_transaction_type {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_mgb_transaction_type`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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
    sql: ${TABLE}.CREATION_DATE ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Mgb Transaction Type ID" in Explore.

  dimension: dwh_mgb_transaction_type_id {
    type: number
    sql: ${TABLE}.DWH_MGB_TRANSACTION_TYPE_ID ;;
  }

  dimension_group: modification {
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
    sql: ${TABLE}.MODIFICATION_DATE ;;
  }

  dimension: transaction_type_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.TRANSACTION_TYPE_ID_BK ;;
  }

  dimension: transaction_type_name_de {
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE_NAME_DE ;;
  }

  dimension: transaction_type_name_fr {
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE_NAME_FR ;;
  }

  dimension: transaction_type_name_it {
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE_NAME_IT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

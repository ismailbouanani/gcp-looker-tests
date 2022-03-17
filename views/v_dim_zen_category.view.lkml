# The name of this view in Looker is "V Dim Zen Category"
view: v_dim_zen_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_zen_category`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Child Name" in Explore.

  dimension: child_name {
    type: string
    sql: ${TABLE}.CHILD_NAME ;;
  }

  dimension: complete_hierarchy {
    type: string
    sql: ${TABLE}.COMPLETE_HIERARCHY ;;
  }

  dimension: dwh_zen_category_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_CATEGORY_ID ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
  }

  dimension: zen_category_bk {
    type: string
    sql: ${TABLE}.ZEN_CATEGORY_BK ;;
  }

  dimension: zen_category_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ZEN_CATEGORY_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: [child_name, parent_name]
  }
}

# The name of this view in Looker is "V Stg Product Category"
view: v_stg_product_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_stg_product_category`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.CATEGORY_ID ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

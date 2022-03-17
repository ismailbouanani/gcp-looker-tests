# The name of this view in Looker is "V Stg Product Translation"
view: v_stg_product_translation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_stg_product_translation`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Food Facts" in Explore.

  dimension: food_facts {
    type: string
    sql: ${TABLE}.FOOD_FACTS ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: specific {
    type: string
    sql: ${TABLE}.SPECIFIC ;;
  }

  dimension: translations {
    type: string
    sql: ${TABLE}.TRANSLATIONS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

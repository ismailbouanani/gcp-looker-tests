# The name of this view in Looker is "V Dim Zen Assignee"
view: v_dim_zen_assignee {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_zen_assignee`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assignee ID" in Explore.

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.ASSIGNEE_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: dwh_zen_assignee_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_ASSIGNEE_ID ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.ORGANIZATION_ID ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.ORGANIZATION_NAME ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.UPDATED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [organization_name]
  }
}

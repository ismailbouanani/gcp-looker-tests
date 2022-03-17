# The name of this view in Looker is "V Dim Zen Attributes"
view: v_dim_zen_attributes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_zen_attributes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: contact_reason {
    type: string
    sql: ${TABLE}.CONTACT_REASON ;;
  }

  dimension: dwh_zen_attributes_id {
    type: number
    sql: ${TABLE}.DWH_ZEN_ATTRIBUTES_ID ;;
  }

  dimension: group_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.GROUP_ID_BK ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.ORGANIZATION ;;
  }

  dimension: organization_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORGANIZATION_ID_BK ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: satisfaction_rating {
    type: string
    sql: ${TABLE}.SATISFACTION_RATING ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}

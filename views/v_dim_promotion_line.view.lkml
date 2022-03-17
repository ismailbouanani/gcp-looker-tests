# The name of this view in Looker is "V Dim Promotion Line"
view: v_dim_promotion_line {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_promotion_line`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Promotion Line ID" in Explore.

  dimension: dwh_promotion_line_id {
    type: number
    sql: ${TABLE}.DWH_PROMOTION_LINE_ID ;;
  }

  dimension: promo_internal_name {
    type: string
    sql: ${TABLE}.PROMO_INTERNAL_NAME ;;
  }

  dimension: promo_lines_text {
    type: string
    sql: ${TABLE}.promo_lines_text ;;
  }

  dimension: promo_lines_text_2 {
    type: string
    sql: ${TABLE}.promo_lines_text_2 ;;
  }

  dimension: promo_lines_text_bottom {
    type: string
    sql: ${TABLE}.promo_lines_text_bottom ;;
  }

  dimension: promo_lines_text_top {
    type: string
    sql: ${TABLE}.promo_lines_text_top ;;
  }

  dimension: promo_rebate_range {
    type: string
    sql: ${TABLE}.PROMO_REBATE_RANGE ;;
  }

  dimension: promotion_line_id_bk {
    type: number
    value_format_name: id
    sql: ${TABLE}.promotion_line_ID_BK ;;
  }

  measure: count {
    type: count
    drill_fields: [promo_internal_name]
  }
}

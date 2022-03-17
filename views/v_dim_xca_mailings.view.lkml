# The name of this view in Looker is "V Dim Xca Mailings"
view: v_dim_xca_mailings {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_xca_mailings`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Day En" in Explore.

  dimension: day_en {
    type: string
    sql: ${TABLE}.DAY_EN ;;
  }

  dimension: delivery_date_id {
    type: number
    sql: ${TABLE}.DELIVERY_DATE_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: delivery_date {
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
    sql: ${TABLE}.DELIVERY_DATE_TIME ;;
  }

  dimension: dwh_calendar_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_ID ;;
  }

  dimension: dwh_mailings_id {
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  dimension: dwh_time_hour_id {
    type: number
    sql: ${TABLE}.DWH_TIME_HOUR_ID ;;
  }

  dimension: ext_mailing_id {
    type: string
    sql: ${TABLE}.EXT_MAILING_ID ;;
  }

  dimension: file_name_origin {
    type: string
    sql: ${TABLE}.FILE_NAME_ORIGIN ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: mailing_name {
    type: string
    sql: ${TABLE}.MAILING_NAME ;;
  }

  dimension: mailing_origin {
    type: string
    sql: ${TABLE}.MAILING_ORIGIN ;;
  }

  dimension: mailing_tags {
    type: string
    sql: ${TABLE}.MAILING_TAGS ;;
  }

  dimension: mailing_type {
    type: string
    sql: ${TABLE}.MAILING_TYPE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: subject_desc_de {
    type: string
    sql: ${TABLE}.SUBJECT_DESC_DE ;;
  }

  dimension: subject_desc_en {
    type: string
    sql: ${TABLE}.SUBJECT_DESC_EN ;;
  }

  dimension: subject_desc_fr {
    type: string
    sql: ${TABLE}.SUBJECT_DESC_FR ;;
  }

  dimension: target_group_name {
    type: string
    sql: ${TABLE}.TARGET_GROUP_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [mailing_name, target_group_name]
  }
}

# The name of this view in Looker is "V Digital Smkt Mapping User"
view: v_digital_smkt_mapping_user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_digital_smkt_mapping_user`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cumulus Card Num" in Explore.

  dimension: cumulus_card_num {
    type: number
    sql: ${TABLE}.CUMULUS_CARD_NUM ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cumulus_card_num {
    type: sum
    sql: ${cumulus_card_num} ;;
  }

  measure: average_cumulus_card_num {
    type: average
    sql: ${cumulus_card_num} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: email_confirmed_timestamp {
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
    sql: ${TABLE}.EMAIL_CONFIRMED_TIMESTAMP ;;
  }

  dimension_group: entry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ENTRY_DATE ;;
  }

  dimension_group: person_capture_timestamp {
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
    sql: ${TABLE}.PERSON_CAPTURE_TIMESTAMP ;;
  }

  dimension: person_guid {
    type: string
    sql: ${TABLE}.PERSON_GUID ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.TRACKING_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

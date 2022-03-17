# The name of this view in Looker is "V Fact Canton Holidays"
view: v_fact_canton_holidays {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_canton_holidays`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Check Sum" in Explore.

  dimension: check_sum {
    type: number
    sql: ${TABLE}.CHECK_SUM ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_check_sum {
    type: sum
    sql: ${check_sum} ;;
  }

  measure: average_check_sum {
    type: average
    sql: ${check_sum} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}.DATE ;;
  }

  dimension: dwh_calendar_holiday_id {
    type: number
    sql: ${TABLE}.DWH_CALENDAR_HOLIDAY_ID ;;
  }

  dimension: dwh_holidays_id {
    type: number
    sql: ${TABLE}.DWH_HOLIDAYS_ID ;;
  }

  dimension: geoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.GEOID ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}.ISO ;;
  }

  dimension: iso_3166_2 {
    type: string
    sql: ${TABLE}.ISO_3166_2 ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: public_holiday_description {
    type: string
    sql: ${TABLE}.PUBLIC_HOLIDAY_DESCRIPTION ;;
  }

  dimension: public_holiday_percent {
    type: number
    sql: ${TABLE}.PUBLIC_HOLIDAY_PERCENT ;;
  }

  dimension: public_holiday_population {
    type: number
    sql: ${TABLE}.PUBLIC_HOLIDAY_POPULATION ;;
  }

  dimension: school_holiday_description {
    type: string
    sql: ${TABLE}.SCHOOL_HOLIDAY_DESCRIPTION ;;
  }

  dimension: school_holiday_percent {
    type: number
    sql: ${TABLE}.SCHOOL_HOLIDAY_PERCENT ;;
  }

  dimension: school_holiday_population {
    type: number
    sql: ${TABLE}.SCHOOL_HOLIDAY_POPULATION ;;
  }

  dimension: ssis_log_id {
    type: number
    sql: ${TABLE}.SSIS_LOG_ID ;;
  }

  dimension: sum_percent {
    type: number
    sql: ${TABLE}.SUM_PERCENT ;;
  }

  dimension: sum_population {
    type: number
    sql: ${TABLE}.SUM_POPULATION ;;
  }

  dimension: total_population {
    type: number
    sql: ${TABLE}.TOTAL_POPULATION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

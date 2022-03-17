# The name of this view in Looker is "V Dim Mgb Boss Codes"
view: v_dim_mgb_boss_codes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_mgb_boss_codes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dwh Mgb Boss Codes ID" in Explore.

  dimension: dwh_mgb_boss_codes_id {
    type: number
    sql: ${TABLE}.DWH_MGB_BOSS_CODES_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: insert {
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
    sql: ${TABLE}.InsertTime ;;
  }

  dimension: m_boss_bereich_id {
    type: number
    sql: ${TABLE}.M_BOSS_BEREICH_ID ;;
  }

  dimension: m_boss_bereich_name {
    type: string
    sql: ${TABLE}.M_BOSS_BEREICH_NAME ;;
  }

  dimension: m_boss_code {
    type: string
    sql: ${TABLE}.M_BOSS_CODE ;;
  }

  dimension: m_boss_familie_id {
    type: number
    sql: ${TABLE}.M_BOSS_FAMILIE_ID ;;
  }

  dimension: m_boss_familie_name {
    type: string
    sql: ${TABLE}.M_BOSS_FAMILIE_NAME ;;
  }

  dimension: m_boss_thema_id {
    type: number
    sql: ${TABLE}.M_BOSS_THEMA_ID ;;
  }

  dimension: m_boss_thema_name {
    type: string
    sql: ${TABLE}.M_BOSS_THEMA_NAME ;;
  }

  dimension: m_boss_verkaufsektor_id {
    type: number
    sql: ${TABLE}.M_BOSS_VERKAUFSEKTOR_ID ;;
  }

  dimension: m_boss_verkaufsektor_name {
    type: string
    sql: ${TABLE}.M_BOSS_VERKAUFSEKTOR_NAME ;;
  }

  dimension: m_boss_welt_name {
    type: string
    sql: ${TABLE}.M_BOSS_WELT_NAME ;;
  }

  dimension: m_bosswelt_id {
    type: number
    sql: ${TABLE}.M_BOSSWELT_ID ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.UpdateTime ;;
  }

  measure: count {
    type: count
    drill_fields: [m_boss_familie_name, m_boss_thema_name, m_boss_bereich_name, m_boss_welt_name, m_boss_verkaufsektor_name]
  }
}

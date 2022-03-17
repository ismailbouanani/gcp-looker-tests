# The name of this view in Looker is "V Dim Delivery Info"
view: v_dim_delivery_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_delivery_info`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Canton" in Explore.

  dimension: canton {
    type: string
    sql: ${TABLE}.CANTON ;;
  }

  dimension: cooperative {
    type: string
    sql: ${TABLE}.COOPERATIVE ;;
  }

  dimension: customer_delivery_channel_olap {
    type: string
    sql: ${TABLE}.Customer_Delivery_Channel_OLAP ;;
  }

  dimension: day_split {
    type: number
    sql: ${TABLE}.DAY_SPLIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_day_split {
    type: sum
    sql: ${day_split} ;;
  }

  measure: average_day_split {
    type: average
    sql: ${day_split} ;;
  }

  dimension: delivery_info_id_bk {
    type: string
    sql: ${TABLE}.DELIVERY_INFO_ID_BK ;;
  }

  dimension: delivery_mode {
    type: string
    sql: ${TABLE}.DELIVERY_MODE ;;
  }

  dimension: delivery_mode_priority {
    type: string
    sql: ${TABLE}.DELIVERY_MODE_PRIORITY ;;
  }

  dimension: delivery_service_type_name {
    type: string
    sql: ${TABLE}.DELIVERY_SERVICE_TYPE_NAME ;;
  }

  dimension: delivery_slot_description {
    type: string
    sql: ${TABLE}.DELIVERY_SLOT_DESCRIPTION ;;
  }

  dimension: distribution_site {
    type: string
    sql: ${TABLE}.Distribution_Site ;;
  }

  dimension: dwh_delivery_info_id {
    type: number
    sql: ${TABLE}.DWH_DELIVERY_INFO_ID ;;
  }

  dimension: dwh_warehouse_id {
    type: number
    sql: ${TABLE}.DWH_WAREHOUSE_ID ;;
  }

  dimension: hh_1 {
    type: number
    sql: ${TABLE}.HH_1 ;;
  }

  dimension: hh_2 {
    type: number
    sql: ${TABLE}.HH_2 ;;
  }

  dimension: hh_3 {
    type: number
    sql: ${TABLE}.HH_3 ;;
  }

  dimension: hh_4 {
    type: number
    sql: ${TABLE}.HH_4 ;;
  }

  dimension: hh_5 {
    type: number
    sql: ${TABLE}.HH_5 ;;
  }

  dimension: hh_6_and_up {
    type: number
    sql: ${TABLE}.HH_6_and_up ;;
  }

  dimension: ls_current_delivered_days {
    type: number
    sql: ${TABLE}.LS_current_DELIVERED_DAYS ;;
  }

  dimension: name_de {
    type: string
    sql: ${TABLE}.NAME_DE ;;
  }

  dimension: name_fr {
    type: string
    sql: ${TABLE}.NAME_FR ;;
  }

  dimension: nb_habitants {
    type: number
    sql: ${TABLE}.NB_Habitants ;;
  }

  dimension: nb_households {
    type: number
    sql: ${TABLE}.nb_Households ;;
  }

  dimension: night_split {
    type: number
    sql: ${TABLE}.NIGHT_SPLIT ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.Service ;;
  }

  dimension: service_mode {
    type: string
    sql: ${TABLE}.SERVICE_MODE ;;
  }

  dimension: split_details {
    type: string
    sql: ${TABLE}.SPLIT_DETAILS ;;
  }

  dimension: split_type {
    type: string
    sql: ${TABLE}.SPLIT_TYPE ;;
  }

  dimension: unloading_carrier {
    type: string
    sql: ${TABLE}.UNLOADING_CARRIER ;;
  }

  dimension: unloading_site {
    type: string
    sql: ${TABLE}.UNLOADING_SITE ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: zip2 {
    type: number
    sql: ${TABLE}.ZIP2 ;;
  }

  dimension: zip4 {
    type: number
    sql: ${TABLE}.ZIP4 ;;
  }

  dimension: zip6 {
    type: number
    sql: ${TABLE}.ZIP6 ;;
  }

  dimension: zip_center_lat {
    type: number
    sql: ${TABLE}.ZIP_CENTER_LAT ;;
  }

  dimension: zip_center_long {
    type: number
    sql: ${TABLE}.ZIP_CENTER_LONG ;;
  }

  dimension: zip_region {
    type: string
    sql: ${TABLE}.ZIP_REGION ;;
  }

  dimension: zip_two_center_lat {
    type: number
    sql: ${TABLE}.ZIP_TWO_CENTER_LAT ;;
  }

  dimension: zip_two_center_long {
    type: number
    sql: ${TABLE}.ZIP_TWO_CENTER_LONG ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: [delivery_service_type_name, warehouse_name]
  }
}

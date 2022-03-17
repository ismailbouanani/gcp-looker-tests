# The name of this view in Looker is "V Dim Customer"
view: v_dim_customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gcp_p_mo_da_azure_datalake_bqdataset01.v_dim_customer`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abcdelnsegment" in Explore.

  dimension: abcdelnsegment {
    type: string
    description: "Text value of ABCDELNS from Migros segment import"
    sql: ${TABLE}.ABCDELNSegment ;;
  }

  dimension: abcdelnsegment_id {
    type: string
    description: "ID of segment from Migros segment import"
    sql: ${TABLE}.ABCDELNSegmentID ;;
  }

  dimension: abo_discount {
    type: number
    description: "Sum of discount for delivery pass"
    sql: ${TABLE}.Abo_discount ;;
  }

  dimension: abo_name_description_last {
    type: string
    description: "Name of last abo description of delivery pass"
    sql: ${TABLE}.Abo_Name_description_LAST ;;
  }

  dimension: abo_name_proposed_last {
    type: string
    description: "Name of last segment of delivery pass"
    sql: ${TABLE}.Abo_Name_Proposed_LAST ;;
  }

  dimension: abo_name_purchased_last {
    type: string
    description: "Name of last delivery pass purchased"
    sql: ${TABLE}.Abo_Name_purchased_LAST ;;
  }

  dimension: abo_nb_abo_purchased {
    type: number
    description: "Number of Delivery pass bought"
    sql: ${TABLE}.Abo_nb_abo_purchased ;;
  }

  dimension: abo_nb_abo_purchased_top {
    type: string
    sql: ${TABLE}.Abo_nb_abo_purchased_top ;;
  }

  dimension: abo_purchased {
    type: string
    description: "Delivery pass has been purchased"
    sql: ${TABLE}.Abo_purchased ;;
  }

  dimension: abo_purchased_price_last {
    type: number
    description: "Price of last Delivery pass"
    sql: ${TABLE}.Abo_purchased_price_LAST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_abo_purchased_price_last {
    type: sum
    sql: ${abo_purchased_price_last} ;;
  }

  measure: average_abo_purchased_price_last {
    type: average
    sql: ${abo_purchased_price_last} ;;
  }

  dimension: acquisition_offer_segment {
    type: string
    description: "Text of acquisition segment"
    sql: ${TABLE}.ACQUISITION_OFFER_SEGMENT ;;
  }

  dimension: avg_opening_hour {
    type: number
    description: "Average time when e-mail is opened"
    sql: ${TABLE}.AVG_OPENING_HOUR ;;
  }

  dimension: b2_b {
    type: string
    description: "Is B2B (not sure if still fullfill MARIA)"
    sql: ${TABLE}.B2B ;;
  }

  dimension: basket_type {
    type: string
    description: "Text value of basket type from Migros segment import"
    sql: ${TABLE}.BasketType ;;
  }

  dimension: basket_type_id {
    type: number
    description: "ID of the basket type from Migros segment import"
    sql: ${TABLE}.BasketTypeID ;;
  }

  dimension: canton {
    type: string
    description: "Canton (best is VS)"
    sql: ${TABLE}.Canton ;;
  }

  dimension: cctool_user {
    type: number
    description: "Is a CCTool user (1=yes,2=no)"
    sql: ${TABLE}.CCTOOL_USER ;;
  }

  dimension: class_alcohol {
    type: string
    description: "Alcohol segmentation"
    sql: ${TABLE}.CLASS_ALCOHOL ;;
  }

  dimension: class_baby {
    type: string
    description: "Baby segmentation"
    sql: ${TABLE}.CLASS_BABY ;;
  }

  dimension: class_bio {
    type: string
    description: "Bio segmentation"
    sql: ${TABLE}.CLASS_BIO ;;
  }

  dimension: class_discount_mkt {
    type: string
    description: "Discount marketing trend segmentation"
    sql: ${TABLE}.CLASS_DISCOUNT_MKT ;;
  }

  dimension: class_fleg {
    type: string
    description: "Fleg segmentation"
    sql: ${TABLE}.CLASS_FLEG ;;
  }

  dimension: class_fresh {
    type: string
    description: "Fresh segmentation"
    sql: ${TABLE}.CLASS_FRESH ;;
  }

  dimension: class_frozen {
    type: string
    description: "Frozen segmentation"
    sql: ${TABLE}.CLASS_FROZEN ;;
  }

  dimension: class_grocery_or_non_alcohol {
    type: string
    description: "Grocery or non alcohol segmentation"
    sql: ${TABLE}.CLASS_GROCERY_OR_NON_ALCOHOL ;;
  }

  dimension: class_nb_orders_trend {
    type: string
    description: "Order frequency trend segmentation"
    sql: ${TABLE}.CLASS_NB_ORDERS_TREND ;;
  }

  dimension: class_pet {
    type: string
    description: "Pet segmentation"
    sql: ${TABLE}.CLASS_PET ;;
  }

  dimension: class_rf_trend {
    type: string
    description: "RF trend segmentation"
    sql: ${TABLE}.CLASS_RF_TREND ;;
  }

  dimension: class_sales_avg_basket {
    type: string
    description: "Sales average basket trend segmentation"
    sql: ${TABLE}.CLASS_SALES_AVG_BASKET ;;
  }

  dimension: class_sales_in_promo {
    type: string
    description: "Promo buyer trend segmentation"
    sql: ${TABLE}.CLASS_SALES_IN_PROMO ;;
  }

  dimension: class_sales_vp {
    type: string
    description: "Sales VP customer segmentation"
    sql: ${TABLE}.CLASS_SALES_VP ;;
  }

  dimension: class_spending_trend {
    type: string
    description: "Spending trend segmentation"
    sql: ${TABLE}.CLASS_SPENDING_TREND ;;
  }

  dimension: class_tmm {
    type: string
    description: "Total margin marketing trend segmentation"
    sql: ${TABLE}.CLASS_TMM ;;
  }

  dimension: cooperative {
    type: string
    description: "Cooperative near the customer"
    sql: ${TABLE}.COOPERATIVE ;;
  }

  dimension: coupon_name {
    type: string
    description: "Name of the coupon used in first order"
    sql: ${TABLE}.COUPON_NAME ;;
  }

  dimension: coupon_used_first_order {
    type: string
    description: "Coupon used in first order (yes/no)"
    sql: ${TABLE}.COUPON_USED_FIRST_ORDER ;;
  }

  dimension: customers_activity_last_status_olap {
    type: string
    description: "Last status of customer activity (TBD)"
    sql: ${TABLE}.Customers_Activity_last_Status_OLAP ;;
  }

  dimension: customers_activity_last_status_olap_top {
    type: string
    description: "Last status of customer activity (TBD)"
    sql: ${TABLE}.Customers_Activity_last_Status_OLAP_top ;;
  }

  dimension: dim_house_all_basket_olap {
    type: string
    description: "Segmentation of basket range"
    sql: ${TABLE}.dim_house_all_basket_OLAP ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dt_first_o {
    type: time
    description: "First order of the customer"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DT_FIRST_O ;;
  }

  dimension: dt_first_o_dim_house {
    type: number
    description: "First order of the household (YYYYMMDD)"
    sql: ${TABLE}.DT_FIRST_O_DIM_HOUSE ;;
  }

  dimension: dt_first_o_dim_house_dim {
    type: number
    description: "First order of the household (YYYYMM)"
    sql: ${TABLE}.DT_FIRST_O_DIM_HOUSE_DIM ;;
  }

  dimension: dt_first_o_dim_house_year_dim {
    type: number
    description: "First order of the household (YYYY)"
    sql: ${TABLE}.DT_FIRST_O_DIM_HOUSE_YEAR_DIM ;;
  }

  dimension: dt_first_o_dim_olap {
    type: number
    description: "First order of the Customer cube (YYYYMMDD)"
    sql: ${TABLE}.DT_FIRST_O_DIM_OLAP ;;
  }

  dimension: dt_first_o_dim_user {
    type: number
    description: "First order of the Customer (YYYYMMDD)"
    sql: ${TABLE}.DT_FIRST_O_DIM_USER ;;
  }

  dimension: dt_first_o_dim_user_dim {
    type: number
    description: "First order of the Customer (YYYYMM)"
    sql: ${TABLE}.DT_FIRST_O_DIM_USER_DIM ;;
  }

  dimension: dt_first_o_dim_user_year_dim {
    type: number
    description: "First order of the Customer (YYYY)"
    sql: ${TABLE}.DT_FIRST_O_DIM_USER_YEAR_DIM ;;
  }

  dimension_group: dt_last_o {
    type: time
    description: "Last order of the customer"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DT_LAST_O ;;
  }

  dimension: dt_last_o_dim_house {
    type: number
    description: "Last order of the household (YYYYMMDD)"
    sql: ${TABLE}.DT_LAST_O_DIM_HOUSE ;;
  }

  dimension: dt_last_o_dim_olap {
    type: number
    description: "Last order of the Customer cube (YYYYMMDD)"
    sql: ${TABLE}.DT_LAST_O_DIM_OLAP ;;
  }

  dimension: dt_last_o_dim_user {
    type: number
    description: "Last order of the Customer (YYYYMMDD)"
    sql: ${TABLE}.DT_LAST_O_DIM_USER ;;
  }


  dimension: dwh_customer_id {
    type: number
    description: "Technical unique key of customer - used to join with other tables"
    sql: ${TABLE}.DWH_CUSTOMER_ID ;;
  }

  dimension: email_last_opened {
    type: string
    description: "Email last opened (yes/no)"
    sql: ${TABLE}.EMAIL_LAST_OPENED ;;
  }

  dimension: email_last_opened_date_id {
    type: number
    description: "Date of email last opened (YYYYYMMDD)"
    sql: ${TABLE}.EMAIL_LAST_OPENED_DATE_ID ;;
  }

  dimension: email_last_opened_day {
    type: string
    description: "day of email last opened (YYYYYMMDD)"
    sql: ${TABLE}.EMAIL_LAST_OPENED_DAY ;;
  }

  dimension: email_last_opened_month {
    type: string
    description: "Month of email last opened (YYYYYMM)"
    sql: ${TABLE}.EMAIL_LAST_OPENED_MONTH ;;
  }

  dimension: email_last_opened_year {
    type: string
    description: "Year of email last opened (YYYYY)"
    sql: ${TABLE}.EMAIL_LAST_OPENED_YEAR ;;
  }

  dimension: gender_txt {
    type: string
    description: "Gender of the customer"
    sql: ${TABLE}.GENDER_txt ;;
  }

  dimension: has_cumulus_card {
    type: string
    description: "Has cumulus card (1=yes,0=no)"
    sql: ${TABLE}.has_cumulus_card ;;
  }

  dimension: house_all_nb_order_olap {
    type: string
    description: "Segmentation of number of orders per houshold"
    sql: ${TABLE}.house_all_nb_order_OLAP ;;
  }

  dimension: house_id_bk {
    type: number
    description: "Business key - ID of the Migros Online household"
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_BK ;;
  }

  dimension: house_id_bon_payeur {
    type: string
    description: "Is a good payer"
    sql: ${TABLE}.HOUSE_ID_Bon_Payeur ;;
  }

  dimension: house_id_bon_payeur_olap {
    type: string
    description: "Is a good payer (Cube)"
    sql: ${TABLE}.HOUSE_ID_Bon_Payeur_OLAP ;;
  }

  dimension: house_id_nb_ord {
    type: number
    description: "Household number of orders"
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_NB_ORD ;;
  }

  dimension: house_id_val_bsk {
    type: number
    description: "MARIA"
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_VAL_BSK ;;
  }

  dimension: house_id_val_ord {
    type: number
    description: "Household total sales"
    value_format_name: id
    sql: ${TABLE}.HOUSE_ID_VAL_ORD ;;
  }

  dimension: intrum_credit_score {
    type: string
    description: "Intrum credit score"
    sql: ${TABLE}.INTRUM_CREDIT_SCORE ;;
  }

  dimension: is_customer {
    type: number
    description: "Has bought at Migros Online (1=Yes,2=No)"
    sql: ${TABLE}.IS_CUSTOMER ;;
  }

  dimension: kaufmotiv_segment {
    type: string
    description: "Text value of reason of buying from Migros segment import"
    sql: ${TABLE}.KaufmotivSegment ;;
  }

  dimension: kaufmotiv_segment_id {
    type: number
    description: "ID of reason of buying segment from Migros segment import"
    sql: ${TABLE}.KaufmotivSegmentID ;;
  }

  dimension: language_txt {
    type: string
    description: "Language of the customer"
    sql: ${TABLE}.LANGUAGE_txt ;;
  }

  dimension: last_active_user_in_household {
    type: number
    description: "Last Active user in household"
    sql: ${TABLE}.LAST_ACTIVE_USER_IN_HOUSEHOLD ;;
  }

  dimension_group: last_segment_rf_status_change {
    type: time
    description: "Last change (date) on segment RF"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_SEGMENT_RF_STATUS_CHANGE_DATE ;;
  }

  dimension: loyalty_value {
    type: string
    description: "Text value of loyalty from Migros segment import"
    sql: ${TABLE}.LoyaltyValue ;;
  }

  dimension: loyalty_value_id {
    type: number
    description: "ID of the loyaly from Migros segment import"
    sql: ${TABLE}.LoyaltyValueID ;;
  }

  dimension: lssegment {
    type: string
    description: "Customer segment Migros Online (Junge, Neue Familien...)"
    sql: ${TABLE}.LSSEGMENT ;;
  }

  dimension: lssegmentid {
    type: number
    description: "TBD"
    value_format_name: id
    sql: ${TABLE}.LSSEGMENTID ;;
  }

  dimension: m_login_status {
    type: string
    description: "Status of the M Login"
    sql: ${TABLE}.M_LOGIN_STATUS ;;
  }

  dimension: mail_hour_opener {
    type: string
    description: "Segmentation when e-mail is opened"
    sql: ${TABLE}.MAIL_HOUR_OPENER ;;
  }

  dimension: marketing_email {
    type: number
    description: "Want to receive Marketing by email (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email ;;
  }

  dimension: marketing_email_baby {
    type: number
    description: "Want to receive Marketing related to baby products (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email_baby ;;
  }

  dimension: marketing_email_gift_and_special_offer {
    type: number
    description: "Want to receive Marketing related to gifts and specials offers products (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email_Gift_and_Special_Offer ;;
  }

  dimension: marketing_email_pet {
    type: number
    description: "Want to receive Marketing related to pet products (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email_PET ;;
  }

  dimension: marketing_email_promo {
    type: number
    description: "Want to receive Marketing related to promotion products (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email_promo ;;
  }

  dimension: marketing_email_wine {
    type: number
    description: "Want to receive Marketing related to wine products (1=yes,0=no)"
    sql: ${TABLE}.Marketing_email_Wine ;;
  }

  dimension: marketing_info {
    type: number
    sql: ${TABLE}.Marketing_info ;;
  }

  dimension: marketing_phone {
    type: number
    description: "Want to receive Marketing by phone (1=yes,0=no)"
    sql: ${TABLE}.Marketing_Phone ;;
  }

  dimension: marketing_post {
    type: number
    description: "Want to receive Marketing by post (1=yes,0=no)"
    sql: ${TABLE}.Marketing_post ;;
  }

  dimension: marketing_sms {
    type: number
    description: "Want to receive Marketing by SMS (1=yes,0=no)"
    sql: ${TABLE}.Marketing_SMS ;;
  }

  dimension: migros_login_date_dim {
    type: string
    description: "Migros Login first date (YYYYMMDD)"
    sql: ${TABLE}.MIGROS_LOGIN_DATE_DIM ;;
  }

  dimension: migros_login_date_month {
    type: number
    description: "Migros Login Year (YYYYMM)"
    sql: ${TABLE}.MIGROS_LOGIN_DATE_Month ;;
  }

  dimension: migros_login_date_year {
    type: number
    description: "Migros Login Year (YYYY)"
    sql: ${TABLE}.MIGROS_LOGIN_DATE_Year ;;
  }

  dimension: migros_person_id {
    type: string
    description: "Person ID (Migros Login)"
    sql: ${TABLE}.MIGROS_PERSON_ID ;;
  }

  dimension: order_frequency_segment {
    type: string
    description: "Text of order frequency segmentation"
    sql: ${TABLE}.ORDER_FREQUENCY_SEGMENT ;;
  }

  dimension: preissegment {
    type: string
    description: "Text value of preis segment from Migros segment import"
    sql: ${TABLE}.Preissegment ;;
  }

  dimension: preissegment_id {
    type: number
    description: "ID of preis segment from Migros segment import"
    sql: ${TABLE}.PreissegmentID ;;
  }

  dimension: promosegment {
    type: string
    description: "Customer segment Promo Migros Online"
    sql: ${TABLE}.PROMOSEGMENT ;;
  }

  dimension: promosegmentid {
    type: number
    description: "ID of customer segment Promo Migros Online"
    value_format_name: id
    sql: ${TABLE}.PROMOSEGMENTID ;;
  }

  dimension: quartile_financial_score_total {
    type: number
    description: "Quartil financial score of customer"
    sql: ${TABLE}.QUARTILE_FINANCIAL_SCORE_TOTAL ;;
  }

  dimension: region {
    type: string
    description: "Region of the canton"
    sql: ${TABLE}.Region ;;
  }

  dimension_group: registration {
    type: time
    description: "Date of registration"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REGISTRATION_DATE ;;
  }

  dimension: registration_date_dim {
    type: number
    description: "Registration date (YYYYMMDD)"
    sql: ${TABLE}.REGISTRATION_DATE_DIM ;;
  }

  dimension: rfm_customer_total {
    type: number
    description: "Recense Frequency customer score"
    sql: ${TABLE}.RFM_CUSTOMER_TOTAL ;;
  }

  dimension: seg_jahr_monat_id {
    type: number
    description: "Date of the import of Migros Segment (YYYYMM) import"
    sql: ${TABLE}.SegJahrMonatID ;;
  }

  dimension: segment_rf {
    type: string
    description: "Segmentation Recence Frequency"
    sql: ${TABLE}.SEGMENT_RF ;;
  }

  dimension: sowsegment {
    type: string
    sql: ${TABLE}.SOWSegment ;;
  }

  dimension: sowsegment_id {
    type: number
    description: "ID of reason of buying segment from Migros segment import"
    sql: ${TABLE}.SOWSegmentID ;;
  }

  dimension: spending_trend {
    type: string
    description: "Text value of spending trend from Migros segment import"
    sql: ${TABLE}.SpendingTrend ;;
  }

  dimension: spending_trend_id {
    type: number
    description: "ID of the spending trend from Migros segment import"
    sql: ${TABLE}.SpendingTrendID ;;
  }

  dimension: user_all_nb_order_olap {
    type: string
    description: "TBD"
    sql: ${TABLE}.user_all_nb_order_OLAP ;;
  }

  dimension: user_id_bk {
    type: number
    description: "Business key - ID of the Migros Online customer"
    value_format_name: id
    sql: ${TABLE}.USER_ID_BK ;;
  }

  dimension: user_state {
    type: number
    description: "State of customer (0 = active, 1 = inactive)"
    sql: ${TABLE}.user_state ;;
  }

  dimension: user_status {
    type: string
    description: "Status of customer (text)"
    sql: ${TABLE}.User_Status ;;
  }

  dimension: want_message {
    type: number
    description: "TOBE DELETED - ALWAYS NULL"
    sql: ${TABLE}.WANT_MESSAGE ;;
  }

  dimension: xca_tracking_id {
    type: number
    description: "Tracking ID of Xcampain (XCA)"
    sql: ${TABLE}.XCA_TRACKING_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [coupon_name]
  }
}

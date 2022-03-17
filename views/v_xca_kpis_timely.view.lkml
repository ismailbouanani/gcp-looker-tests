view: v_xca_kpis_timely {

   derived_table: {
     sql:SELECT
         UNI.MONTH_PARTITIONING
         ,cast(LEFT(cast(UNI.MONTH_PARTITIONING AS STRING),4) AS INTEGER) AS YEAR
        ,UNI.DWH_CUSTOMER_ID
        ,UNI.DWH_MAILINGS_ID
        , SUM(IfnULL(CLICKS_NUMBER,0)) as Clicks_number
        , SUM(IfNULL(OPENINGS,0)) as Openings
        , SUM(IfNULL(UNSUBSCRIBES,0)) as Unsubscribes
        , SUM(IfNULL(TRANSACTIONS,0)) as Transactions
        , SUM(IfNULL(AMOUNT,0)) as Transaction_amount
       FROM (
      SELECT dwh_customer_id,MONTH_PARTITIONING,clicks_number,0 AS UNSUBSCRIBES,0 AS OPENINGS,0 AS AMOUNT,0 AS Transactions,DWH_MAILINGS_ID
       FROM  `mo-da-azure-datalake-prod.gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_clicks`
UNION ALL

SELECT DWH_CUSTOMER_ID
,MONTH_PARTITIONING,0 AS CLICKS_number,0 AS UNSUBSCRIBES,1 AS OPENINGS,0 AS AMOUNT,0 AS Transactions,DWH_MAILINGS_ID FROM

           `mo-da-azure-datalake-prod.gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_openers`

UNION ALL
SELECT DWH_CUSTOMER_ID
,MONTH_PARTITIONING,0 AS CLICKS_number,1 AS UNSUBSCRIBES,0 AS OPENINGS,0 AS AMOUNT,0 AS Transactions,DWH_MAILINGS_ID FROM

           `mo-da-azure-datalake-prod.gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_unsubscribes`
UNION ALL
SELECT DWH_CUSTOMER_ID
,MONTH_PARTITIONING,0 AS CLICKS_number,0 AS UNSUBSCRIBES,0 AS OPENINGS,AMOUNT,1 AS Transactions,DWH_MAILINGS_ID FROM

           `mo-da-azure-datalake-prod.gcp_p_mo_da_azure_datalake_bqdataset01.v_fact_xca_transactions`


      ) UNI

       GROUP BY UNI.MONTH_PARTITIONING
        ,UNI.DWH_CUSTOMER_ID
        ,UNI.DWH_MAILINGS_ID
      ;;
}


   dimension: dwh_customer_id {
     description: "Unique ID for each user that has ordered"
     type: number
     sql: ${TABLE}.DWH_CUSTOMER_ID ;;
   }
  dimension: dwh_mailings_id {
    description: "Unique ID for each NL"
    type: number
    sql: ${TABLE}.DWH_MAILINGS_ID ;;
  }

  measure: clicks_number {
     description: "Clicks on NLs"
     type: sum
     sql: ${TABLE}.Clicks_number ;;
  }
  measure: opening_number {
    description: "Openings of NLs"
    type: sum
    sql: ${TABLE}.Openings ;;
  }
  measure: unsubscribe_number {
    description: "Unsubscribes from NLs"
    type: sum
    sql: ${TABLE}.Unsubscribes ;;
  }
  measure: Transaction_amount {
    description: "Transaction Amount on NLs"
    type: sum
    sql: ${TABLE}.Transaction_amount ;;
  }
  measure: Transactions {
    description: "Transaction number on NLs"
    type: sum
    sql: ${TABLE}.Transactions ;;
  }

  measure: average_basket {
    description: "Amount per XCA Transaction simple "
    type: number
    sql: ${Transaction_amount}/(${Transactions}+1) ;;
  }



  measure: transaction_rate {
    description: "Transaction rate per XCA Link opening simple"
    type: number
    sql: ${Transactions}/(${opening_number}+1) ;;
  }



 }

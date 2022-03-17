# Define the database connection to be used for this model.
connection: "mo-da-azure-datalake-prod-con"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: xcampaign_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: xcampaign_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Xcampaign"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: v_dim_product_warehouse {}
explore: v_dim_customer {}


explore: v_dim_xca_links {

  description: "Xcampaign Link present in a newsletter"
  label: "XCA Link"
  join: v_dim_xca_mailings {
    type: inner
    sql_on: ${v_dim_xca_links.dwh_mailings_id} = ${v_dim_xca_mailings.dwh_mailings_id} ;;
    relationship: many_to_one
  }
  join: v_dim_product_warehouse{
    type:  inner
    sql_on: ${v_dim_xca_links.dwh_product_warehouse_id} = ${v_dim_product_warehouse.dwh_product_warehouse_id} ;;
    relationship: many_to_one
  }
}

explore: v_dim_xca_mailings {
  description: "Xcampaign Mailing (newsletter) "
  label: "XCA Mailing"

  }

explore: v_fact_xca_clicks {
  description: "Xcampaign Click on a igven Link"
  label: "XCA Clicks"
  join: v_dim_xca_links {
    type: inner
    sql_on: ${v_fact_xca_clicks.dwh_links_id} = ${v_dim_xca_links.dwh_links_id} ;;
    relationship: many_to_one
  }
  join: v_dim_xca_mailings {
    type: inner
    sql_on: ${v_fact_xca_clicks.dwh_mailings_id} = ${v_dim_xca_mailings.dwh_mailings_id} ;;
    relationship: many_to_one
  }
  join: v_dim_customer {
    type: inner
    sql_on: ${v_fact_xca_clicks.dwh_customer_id} = ${v_dim_customer.dwh_customer_id} ;;
    relationship: many_to_one
  }

}

explore: v_fact_xca_openers {
  description: "Xcampaign Opens of a link"
  label: "XCA Openers"
  join: v_dim_xca_mailings {
    type: inner
    sql_on: ${v_fact_xca_openers.dwh_mailings_id} = ${v_dim_xca_mailings.dwh_mailings_id} ;;
    relationship: many_to_one
  }
  join: v_dim_customer {
    type: inner
    sql_on: ${v_fact_xca_openers.dwh_customer_id} = ${v_dim_customer.dwh_customer_id} ;;
    relationship: many_to_one
  }
}


explore: v_fact_xca_unsubscribes {
  description: "Xcampaign Unsubscribe of a user from a NL"
  label: "XCA Unsubscribes"
  join: v_dim_xca_mailings {
    type: inner
    sql_on: ${v_fact_xca_unsubscribes.dwh_mailings_id} = ${v_dim_xca_mailings.dwh_mailings_id} ;;
    relationship: many_to_one
  }
  join: v_dim_customer {
    type: inner
    sql_on: ${v_fact_xca_unsubscribes.dwh_customer_id} = ${v_dim_customer.dwh_customer_id} ;;
    relationship: many_to_one
  }
}

explore: v_xca_kpis_timely {
  description: "Xcampaign KPI By Month Partitioning"
  label: "XCA KPI"
  join: v_dim_xca_mailings {
    type: inner
    sql_on: ${v_xca_kpis_timely.dwh_mailings_id} = ${v_dim_xca_mailings.dwh_mailings_id} ;;
    relationship: many_to_one
  }
  join: v_dim_customer {
    type: inner
    sql_on: ${v_xca_kpis_timely.dwh_customer_id} = ${v_dim_customer.dwh_customer_id} ;;
    relationship: many_to_one
  }
}

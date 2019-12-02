connection: "bigquery"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: quotes {
  join: policies {
    relationship: many_to_one
    sql_on: ${quotes.uuid_quote} = ${policies.uuid_quote} ;;
  }
  join: feefo_reviews {
    relationship: one_to_many
    sql_on: ${policies.uuid_policy} = ${feefo_reviews.uuid_policy} ;;
  }
  join: policies_same_date {
    from: policies
    relationship: many_to_one
    fields: [policies_same_date.conversion_rate]
    sql_on: ${quotes.uuid_quote} = ${policies.uuid_quote} AND
    ${quotes.created_datetime_date} = ${policies_same_date.created_datetime_date} ;;
  }
}

# with people as (
# select 'zev' as name,
#  ['ben', 'jake', 'waldo', 'fred'] as friends
# )
#
# SELECT name, friend
# from people
# LEFT JOIN unnest(friends) as friend


explore: service_policy_policies {
  join: service_policy_policies__data {
    view_label: "Service Policy Policies"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST([service_policy_policies.data]) as service_policy_policies__data ;;
  }
}

explore: policies {
  join: policies_pets {
    from: policies
    relationship: one_to_many
    sql_on: ${policies.uuid_policy} = ${policies_pets.uuid_policy} ;;
  }
}

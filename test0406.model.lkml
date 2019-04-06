connection: "gcp_bq"

# include all the views
include: "*.view"

datagroup: test0406_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test0406_default_datagroup

explore: inpatient_charges_2011 {}

explore: inpatient_charges_2012 {}

explore: inpatient_charges_2013 {}

explore: inpatient_charges_2014 {}

explore: outpatient_charges_2011 {}

explore: outpatient_charges_2012 {}

explore: outpatient_charges_2013 {}

explore: outpatient_charges_2014 {}

explore: part_d_prescriber_2014 {}

explore: physicians_and_other_supplier_2012 {}

explore: physicians_and_other_supplier_2013 {}

explore: physicians_and_other_supplier_2014 {}

explore: trips {}

explore: trips_2014 {}

explore: trips_2015 {}

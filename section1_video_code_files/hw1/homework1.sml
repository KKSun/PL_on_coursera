(*1 done
fun is_older (date1 : int*int*int , date2 : int*int*int ) =
  if ( #1 date1 > #1 date2 ) then false
  else if ( #1 date1 < #1 date2 ) then true
  else
      if ( #2 date1 > #2 date2 ) then false
      else if ( #2 date1 < #2 date2 ) then true
      else
	  if ( #3 date1 >= #3 date2 ) then false
	  else true
*)
(*2&3 done							     
fun number_in_month ( date_list : (int*int*int) list , month : int ) =
  if null date_list
  then 0
  else
      let
	  val rest_num = number_in_month((tl date_list) , month)
      in
	  if (#2 (hd date_list)) = month
	  then 1+rest_num
	  else rest_num
      end

fun number_in_months ( date_list : (int*int*int) list , months : int list ) =
  if null months
  then 0
  else ( number_in_month(date_list, hd months) + number_in_months(date_list, tl months))
*)	   
(* 4&5 done
fun dates_in_month ( date_list : (int*int*int) list , month : int ) =
  if null date_list
  then []
  else
      let
	  val rest_date_list = dates_in_month((tl  date_list) , month )
      in
	  if (#2 (hd date_list)) = month
	  then (hd date_list)::rest_date_list
	  else rest_date_list
      end

fun dates_in_months ( date_list : (int*int*int) list , months : int list ) =
  if null months
  then []
  else (dates_in_month(date_list,(hd months))) @ (dates_in_months(date_list,(tl months)))
	      
*)	   
(*6/7 done

fun get_nth( l : string list , num : int ) =
  if num = 1
  then hd l
  else get_nth(tl l , num-1)

val month_list = ["January","February","March","April","May","June","July","August","September","October","November","December"];

fun date_to_string( date: int*int*int ) =
  get_nth(month_list , #2 date)^(" ")^(Int.toString(#3 date))^(", ")^(Int.toString(#1 date))
									 
*)

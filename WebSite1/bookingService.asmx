<%@ WebService Language="C#" Class="bookingService" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class bookingService : System.Web.Services.WebService
{



    [WebMethod(EnableSession = true)]
    public void AddBooking(
         string JSONroom,
         int JSONpeple,
         string JSONcheck_in_date,
         string JSONcheck_out_date,
         int JSONprice,
         string JSONfirst_name,
         string JSONlast_name,
         string JSONemail,
         string JSONphone,
         string JSONpayment_method
         )
    {

        string enterDateTime = DateTime.Now.ToString();

        booking_data d = new booking_data()
        {
            enter_datetime = enterDateTime,
            room = JSONroom,
            people = JSONpeple,
            check_in_date = JSONcheck_in_date,
            check_out_date = JSONcheck_out_date,
            price = JSONprice,
            first_name = JSONfirst_name,
            last_name = JSONlast_name,
            email = JSONemail,
            phone = JSONphone,
            payment_method = JSONpayment_method
        };
        BookingUtility.AddBooking(d);
        Session["booking_detail"] = d;
    }

    [WebMethod]
    public Result getBooKings()
    {

        List<booking_data> allBookings = BookingUtility.GetAllBookings();
        return new Result()
        {
            TotalCount = allBookings.Count,
            AllBookings = allBookings
        };
        //return BookingUtility.GetAllBookings();
    }

    [WebMethod]
    public void insertBooking(booking_data Booking_Data)
    {
        string enterDateTime = DateTime.Now.ToString();
        Booking_Data.enter_datetime = enterDateTime;
        BookingUtility.AddBooking(Booking_Data);
    }





}
public class Result
{
    public int TotalCount { get; set; }
    public List<booking_data> AllBookings { get; set; }
}
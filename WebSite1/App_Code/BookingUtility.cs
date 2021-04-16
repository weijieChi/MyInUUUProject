using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookingUtility
/// </summary>
public class BookingUtility
{
    public static void AddBooking(booking_data booking_Data)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        db.booking_data.Add(booking_Data);
        db.SaveChanges();


    }

    public static void UpdateBooking(booking_data booking_Data)
    {
        MyWebDBEntities db = new MyWebDBEntities();

        db.Entry(booking_Data).State = System.Data.Entity.EntityState.Modified;

        db.SaveChanges();
    }

    public static void DeleteBooking(int number)
    {
        MyWebDBEntities db = new MyWebDBEntities();

        booking_data booking_Data = db.booking_data.SingleOrDefault(booking => booking.booking_number == number);

        db.booking_data.Remove(booking_Data);

        db.SaveChanges();

    }

    public static List<booking_data> GetAllBookings()
    {
        MyWebDBEntities db = new MyWebDBEntities();

        return db.booking_data.ToList();
    }

    public static booking_data GetBooking(int number)
    {
        MyWebDBEntities db = new MyWebDBEntities();
        booking_data booking_Data = db.booking_data.SingleOrDefault(booking => booking.booking_number == number);
        return booking_Data;
    }

    public static List<booking_data> GetBookingByPhone(string phoneNumber)
    {
        MyWebDBEntities db = new MyWebDBEntities();

        return db.booking_data.Where(booking => booking.phone.Contains(phoneNumber)).ToList();
    }

    
}
﻿using System;
using System.Globalization;
using System.Windows.Data;

namespace WpfBooks.Converters
{
    public class BooleanToAvailabilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool available)
            {
                return available ? "Available" : "Not Available";
            }
            return "Unknown";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
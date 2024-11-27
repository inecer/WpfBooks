using System.Windows;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class AddReservation : Window
    {
        private readonly ApiService _apiService = new ApiService();

        public AddReservation()
        {
            InitializeComponent();
        }

        private async void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedBook = (Book)BookComboBox.SelectedItem;
            if (selectedBook == null)
            {
                MessageBox.Show("Please select a book.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var bookId = selectedBook.Id;
            var userName = Uri.EscapeDataString(UserNameTextBox.Text);
            var reservationDate = ReservationDatePicker.SelectedDate ?? DateTime.Now;
            var returnDate = ReturnDatePicker.SelectedDate;

            if (returnDate.HasValue && returnDate.Value < reservationDate)
            {
                MessageBox.Show("The return date cannot be before the reservation date.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string reservationDateString = reservationDate.ToString("yyyy-MM-dd");
            string returnDateString = returnDate?.ToString("yyyy-MM-dd");

            string url = $"http://localhost:5133/api/Reservation/CreateReservation?" +
                         $"bookId={bookId}&userName={userName}&reservationDate={reservationDateString}";

            if (!string.IsNullOrEmpty(returnDateString))
            {
                url += $"&returnDate={returnDateString}";
            }

            await _apiService.AddReservationAsync(url, null);
            MessageBox.Show("Reservation added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }
    }
}
using System;
using System.Windows;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class UpdateReservation : Window
    {
        private readonly ApiService _apiService = new ApiService();
        private Reservation _reservation;

        public UpdateReservation(Reservation reservation)
        {
            InitializeComponent();
            _reservation = reservation;
            LoadBooks();
            SetReservationDetails();
        }

        private async void LoadBooks()
        {
            var books = await _apiService.GetBooksAsync();
            BookComboBox.ItemsSource = books;
            BookComboBox.SelectedValuePath = "Id";
            BookComboBox.SelectedValue = _reservation.BookId;
        }

        private void SetReservationDetails()
        {
            IdTextBox.Text = _reservation.Id.ToString();
            UserNameTextBox.Text = _reservation.UserName;
            ReservationDatePicker.SelectedDate = _reservation.ReservationDate;
            ReturnDatePicker.SelectedDate = _reservation.ReturnDate;
        }

        private async void UpdateButton_Click(object sender, RoutedEventArgs e)
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
            var returnDate = ReturnDatePicker.SelectedDate ?? DateTime.Now;

            if (returnDate < reservationDate)
            {
                MessageBox.Show("The return date cannot be before the reservation date.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            _reservation.BookId = bookId;
            _reservation.UserName = userName;
            _reservation.ReservationDate = reservationDate;
            _reservation.ReturnDate = returnDate;

            string reservationDateString = reservationDate.ToString("yyyy-MM-dd");
            string returnDateString = returnDate.ToString("yyyy-MM-dd");

            string url = $"http://localhost:5133/api/Reservation/UpdateReservation?" +
                         $"id={_reservation.Id}&bookId={bookId}&userName={userName}&" +
                         $"reservationDate={reservationDateString}&returnDate={returnDateString}";

            await _apiService.UpdateReservationAsync(url, _reservation);
            MessageBox.Show("Reservation updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }
    }
}
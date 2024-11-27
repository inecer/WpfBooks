using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using WpfBooks.Models;
using WpfBooks.ViewModels;

namespace WpfBooks.Service
{
    public class ApiService
    {
        private readonly HttpClient _httpClient;

        public ApiService()
        {
            _httpClient = new HttpClient();
        }

        //Book
        public async Task<List<Book>> GetBooksAsync()
        {
            return await _httpClient.GetFromJsonAsync<List<Book>>("http://localhost:5133/api/Book/GetBooks");
        }

        public async Task AddBookAsync(string url, Book book)
        {
            var json = JsonSerializer.Serialize(book);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _httpClient.PostAsync(url, content);
            response.EnsureSuccessStatusCode();
        }

        public async Task UpdateBookAsync(string url)
        {
            var response = await _httpClient.PutAsync(url, null);
            response.EnsureSuccessStatusCode();
        }

        public async Task DeleteBookAsync(int bookId)
        {
            await _httpClient.DeleteAsync($"http://localhost:5133/api/Book/DeleteBook/{bookId}");
        }
        
        //Reservation
        public async Task<List<Reservation>> GetReservationsAsync()
        {
            return await _httpClient.GetFromJsonAsync<List<Reservation>>("http://localhost:5133/api/Reservation/GetReservations");
        }

        public async Task AddReservationAsync(string url, object content)
        {
            Console.WriteLine($"Request URL: {url}");

            var response = await _httpClient.PostAsync(url, null);

            if (!response.IsSuccessStatusCode)
            {
                var responseContent = await response.Content.ReadAsStringAsync();
                Console.WriteLine($"Error: {response.StatusCode}, Content: {responseContent}");
                response.EnsureSuccessStatusCode();
            }
        }

        public async Task UpdateReservationAsync(string url, Reservation reservation)
        {
            var json = JsonSerializer.Serialize(reservation);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _httpClient.PutAsync(url, content);
            response.EnsureSuccessStatusCode();
        }

        public async Task DeleteReservationAsync(int reservationId)
        {
            await _httpClient.DeleteAsync($"http://localhost:5133/api/Reservation/DeleteReservation/{reservationId}");
        }
    }
}
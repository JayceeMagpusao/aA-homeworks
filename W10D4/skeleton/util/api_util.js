export const fetchSearchGiphys = searchTerm => (
  $.ajax({
    method: "GET",
    URL: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=4udiSNjtmV4cW5yipdqlBJLAMeRKvtqn`
  })
)
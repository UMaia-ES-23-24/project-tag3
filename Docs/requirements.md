## Requirements

The following are our Functional requirements

### Use case model

- P.S Streaming Channel should be any possible way to legally watch the live match, example: Official Riot Games Twitch stream

 <p align="center" justify="center">
  <img src="https://github.com/UMaia-ES-23-24/project-tag3/blob/main/Images/UMLSport.png"/>
</p>


### Verify Matchups

|     |     |
| --- | --- |
| *Name* | Verify Matchups |
| *Actor* | User |
| *Description* | The customer verifies a match result. |
| *Preconditions* | \- The customer needs to select the type of sport.  <br>\- The customer needs to select the League or Team. |
| *Postconditions* | \- The customer gets information about the match selected. |
| *Normal flow* | 1\. The customer accesses the application  <br>2\. The system shows the option to choose the type of sports.  <br>3\. The system shows the option to choose the League or a Team.  <br>4\. The system shows the League or Team's Matches. |
| *Alternative flows and exceptions* |     |

### See the odds for a specific game

|     |     |
| --- | --- |
| *Name* | See the odds for a specific game |
| *Actor* | User |
| *Description* | See the odds for a specific game |
| *Preconditions* | The app has the odds |
| *Postconditions* | The customer sees the odds |
| *Normal flow* | 1.The user opens the app  <br>2.The user chooses a sport category  <br>3.The user selects a league and the desired match  <br>4\. The app will provide the odds for the selected match |
| *Alternative flows and exceptions* | If error on step 3 the System don't send any odds and redirect user to 2 step again |

### Player Performance

|     |     |
| --- | --- |
| *Name* | Live status of the players performance |
| *Actor* | User |
| *Description* | View the players performance for different matches |
| *Preconditions* | The app has the latest players performance data available |
| *Postconditions* | The customer sees the players performance for the selected match |
| *Normal flow* | 1\. The user opens the app.  <br>2.The user chooses a sport category  <br>3\. The user navigates to the Select player section  <br>4\. The user selects the team and player  <br>5\. The system displays the player information |
| *Alternative flows and exceptions* |     |

### View leaderboard

|     |     |
| --- | --- |
| *Name* | View Leaderboard for Different Competitions |
| *Actor* | User |
| *Description* | View the leaderboard for different competitions |
| *Preconditions* | The app has the latest leaderboard data available |
| *Postconditions* | The customer sees the leaderboard for the selected competition |
| *Normal flow* | 1\. The user opens the app  <br>2\. The user navigates to the Leaderboard section  <br>3.The user selects a league and the desired match  <br>4\. The system displays the leaderboard for the selected competition |
| *Alternative flows and exceptions* | If the user selects a competition that does not exist or is not available the system provides feedback and allows the user to choose another competition. |

### View scoreboard

|     |     |
| --- | --- |
| *Name* | View Scoreboard |
| *Actor* | User |
| *Description* | View the scoreboard for different matches |
| *Preconditions* | The app has the latest scoreboard data available |
| *Postconditions* | The customer sees the scoreboard for the selected match |
| *Normal flow* | 1\. The user opens the app.  <br>2\. The user navigates to the matches section.  <br>3\. The user selects a specific match from the available list.  <br>4\. The system displays the scoreboard for the selected match. |
| *Alternative flows and exceptions* | If the user selects a match that does not exist or is not available the system provides feedback and allows the user to choose another competition. |

### Watch Live match

|     |     |
| --- | --- |
| *Name* | Watch Live Matches |
| *Actor* | User |
| *Description* | Watch live matches through the app |
| *Preconditions* | The app has access to live streaming services and the user has a stable internet connection |
| *Postconditions* | The customer is watching the selected live match |
| *Normal flow* | 1\. The user opens the app  <br>2.The user chooses a sport category  <br>3\. The user selects a league and match  <br>4\. The user navigates to the live match section  <br>5\. The system connects to the API service for the selected match |
| *Alternative flows and exceptions* | If the selected live match is not available for streaming, the system informs the user and suggests choosing another live match. |

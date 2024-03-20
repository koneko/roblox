# Quest Service by koneko (KonekoXVI)
v1.0.0 - 14.3.2024  

Documentation for the Quest Service works internally.  

Internal Actions List:  
- GetPlayerJournal (Player)  
Gets the Journal of the supplied player, not used much internally, but more for providing GUI Journal with text elements.  
- GetCurrentPlayerQuest (Player)  
Gets the supplied player's current (active) quest.  
- SetCurrentQuestAsCompleted (Player, QuestID)  
Sets the supplied player's current quest as completed, moves it out of CurrentQuestInformation and into CompletedQuestInformation table.  
- IncrementCurrentPlayerQuest (Player, Number)  
Increments the players current points by number (does not automatically finish quest).  
- ResetCurrentPlayerQuest (Player)  
Resent players current quest POINTS to zero.  
- RemoveCurrentPlayerQuest (Player)  
Sets the players current quest to nil, does not abandon.  
- AbandonCurrentPlayerQuest (Player)  
same as above, just checks if already abandoned and if not, abandons.  
- CheckIsQuestFinished (Player) (references CurrentQuest, not argumented quest)  
Checks if the players current quest is finished (points >= total points)  
- CheckIfQuestIsCompleted (Player, QuestID)  
Check if quest is in completed quest information for the given player and given quest id.

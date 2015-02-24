# FRC Team 830 Scouting Spreadsheet

## Overview
The spreadsheet has two sheets. One, "Match Data", stores raw input from the scouting program and is not intended to be human edited in any way. The other, "Team Data", shows averaged data for each team, which may be sorted in any way. It can generate a custom rating system, determining the value of each field based on user. There are two macros built into the sheet which take care of data aggregation and processing.

This spreadsheet was designed, programmed and tested entirely on Excel 2010 (Non-commercial license). It has not been tested on any other version of Excel or any other program.

## Important Note!!
### (The data collection macro will not work if you don't do this)
Excel by default is set so that if a formula is entered into one cell of a data table, that formula is copied throughout the entire column. The spreadsheet relies on assigning a different formula to each cell of the table, so this default behavior prevents the macro from working.

To fix the setting, go to File->Options->Proofing, click on AutoCorrect Options, go to the tab labeled "AutoFormat As You Type", and unclick the box that says "Fill formulas in tables to create calculated columns."

## Importing data from the scouting form
The scouting form produces output in the form of comma separated value (.csv) files. To transfer this data to the spreadsheet, open all the scouting form output files you wish to input, then click the AggregateData button on the Match Data sheet. (It should be just to the right of the top-right of the data table.) This will run a macro that copies all data from any .csv files that are open into the sheet.

The macro will not import the same .csv file twice. (It marks them to indicate that they have been imported). However, the spreadsheet cannot do anything to prevent you from forgetting to import a file, so make sure you keep the scouting form input organized so you know what you have and have not imported.

As of now, the macro does not extend the data table if there is more match data than rows in the table. If the data exceeds the limits of the table, which will likely happen during a competition, find the bottom-right corner of the table (outlined in blue) and drag it down until it includes all the data. (You should also pull it much further down so that it can accomodate more data). I hope to automate this in the future.

__Do not modify the Match Data sheet in any way__, except by pressing the AggregateData button. (And extending the data table as mentioned above.) This will interfere with the data on the "Team Data" sheet. If you disturb this sheet, reclicking the ProcessData button will restore things to order.

## Processing the Team Data
To process the scouting form input into data for each team, click the ProcessData button on the Team Data sheet. (It should be to the top-right of the data table.) You may see an image of the Match Data sheet on top of the Team Data; this is purely a graphical glitch and scrolling a bit or clicking elsewhere will make it go away.

The data table will contain one row for each team with data. Each column contains data corresponding to data from the form:
* For numerical data, the sheet displays an average of that team's result from each match. For example, a 5.4 under "tote_height" means on average that team's highest tote height was 5.4 totes.
* For "pass/fail" data, where a robot either had a functionality/performed an action or didn't, the sheet displays a percentage, indicating in what percent of matches they displayed that functionality or performed that action. For example, a 8% under "auton_move" means a robot moved during auton in 8% of its matches.
* For data with a few possibilities, the sheet displays text indicating the _most common_ result. For example, "start" under co-op means that robot's most commmon co-op action was to start a stack.
* The "comments" field is inherently impossible to average or aggregate. Comments may be viewed simply by finding the appropriate team's entry on the Match Data sheet, which will be organized so that each team's entries are together.

Like the Match Data sheet, the Team Data sheet does not automatically expand the data table to make room for more values. However, since there are a limited number of robots at a competition, this is unlikely to cause an issue. The table may be dragged down if necessary.

## Using the custom rankings
In the first column of each team's data, there is a "ranking" cell. The ranking is determined by multiplying each of the numerical data values (including percentages) by the weight above that column. (The weights are on the very first row of the sheet.) By modifying the weights, you can choose which data points you wish to value more or less, and which you wish to disregard. The weightings may be changed freely to see how different schemes rank the robots.

## Dealing with errors
If a user action causes an error, try using "undo". Re-clicking the "process data" button will erase any damage done to the Team Data sheet. 

If Excel will not run the macros, you may not have enabled macros. When you open the file, it may show a warning saying that it has disabled content; click "enable content" to allow the macros to run. If the warning doesn't appear, go to File->Options->Trust Center, click Trust Center Settings, click on the Macro Settings Tab, then click the button next to "Disable macros with notification." When you next open the spreadsheet, it will show you the warning and allow you to enable the macros.

If the ProcessData button appears to put the same data for every single team, your Excel settings need to be fixed; see above. 

If you find a bug in one of the macros, contact me and I will look into it.

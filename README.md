DataProduct
===========

SAMHIST Shiny App:
The shiny app allows users to create a dynamic user interface for input as well as output controls. It uses shiny library and default faithful dataframe provided by the library. This dataset has got data of eruptions and waiting time for certain operations. The application developed would help visualize the frequency of eruptions for given waiting time range.
It consists of a slider that depicts the range of waiting time. Users can select min and max range values.
The right panel displays the histogram showing distribution of eruption frequency over waiting time. This would be helpful for quick analysis of the faithful dataset.

server.R:
The folder consists of server.R and ui.R files needed to run the shiny application.
File server.R holds the code needed to do reactive processing based on user selection for waiting range and displaying histogram dynamically. Furthermore, the slider for waiting range selection is itself loaded dynamically based on the input dataset.

ui.R:
File ui.R holds the formatting information and placement of controls. It makes use of sidepanel to display the slider for waiting time range selection and uses main panel to display the histogram dynamically. It just creates the place holders for server code to use and populate and then renders those dynamically. The values in both the controls are populated through server.R.

Run the app:
Please install shiny library in RStudio/R before running the app
Place both server.R and ui.R in the same folder
Set working directory to the above folder
Execute runApp() from command promopt
This should open the shiny web app

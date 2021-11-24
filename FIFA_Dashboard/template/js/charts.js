function init() {
  // Grab a reference to the dropdown select element
  var selector = d3.select("#selDataset");

  // Use the list of player names to populate the select options
  d3.json("data.json").then((data) => {
    var sampleNames = data.player_names;

    sampleNames.forEach((sample) => {
      selector
        .append("option")
        .text(sample)
        .property("value", sample);
    });

    // Use the first sample from the list to build the initial plots
    var firstSample = sampleNames[0];
    
    buildCharts(firstSample);
    buildMetadata(firstSample);
    buildPicture(firstSample);
  });
}

// Initialize the dashboard
init();

function optionChanged(newSample) {
  // Fetch new data each time a new player is selected
  buildMetadata(newSample);
  buildCharts(newSample);
  buildPicture(newSample);
}

function buildPicture(sample) {
  // Show a picture of the selected player
  d3.json("data.json").then((data) => {
    var metadata = data.market;
    // Filter the data for the object with the desired player name
    var resultArray = metadata.filter(sampleObj => sampleObj.player_name == sample);
    var result = resultArray[0];
    console.log(result)
    // Obtain the img url from the json data
    var photo_url = result.photo_url;
    console.log(photo_url);
    // Write the url in the src attribute of the image
    var img = document.getElementById("img-id");
    img.src = photo_url;
});
}
// Player Info Panel
function buildMetadata(sample) {
  d3.json("data.json").then((data) => {
    var metadata = data.metadata;
    // Filter the data for the object with the desired player name
    var resultArray = metadata.filter(sampleObj => sampleObj.player_name == sample);
    var result = resultArray[0];
    console.log(result)
    // Use d3 to select the panel with id of `#sample-metadata`
    var PANEL = d3.select("#sample-metadata");

    // Use `.html("") to clear any existing metadata
    PANEL.html("");

    // Use `Object.entries` to add each key and value pair to the panel
    // Hint: Inside the loop, you will need to use d3 to append new
    // tags for each key-value in the metadata.
    Object.entries(result).forEach(([key, value]) => {
      PANEL.append("h6").text(`${key.toUpperCase()}: ${value}`);
    });

  });
}

// Create the buildCharts function.
function buildCharts(sample) {
  // Use d3.json to load and retrieve the data.json file 
  d3.json("data.json").then((sampledata) => {
    // Create a variable that holds the market array. 
    var samples = sampledata.market;
    // Create a variable that filters the samples for the object with the desired player name.
    var resultArray = samples.filter(sampleObj => sampleObj.player_name == sample);
    // Create a variable that holds the first sample in the array.
    var result = resultArray[0];
    console.log(result);
    // Create variables that hold market values, year and attributes..
    var market_values = [result.market_2015, result.market_2016, result.market_2017, result.market_2018, result.market_2019];
    console.log(market_values);
    var years = ["2015", "2016", "2017", "2018", "2019"];
    console.log(years);
    var metadata = sampledata.metadata;
    console.log(metadata)
    var attributeArray = metadata.filter(sampleObj => sampleObj.player_name == sample);
    var attributeResult = attributeArray[0];
    var attributes = [attributeResult.overall, 
      attributeResult.acceleration,
      attributeResult.agility, 
      attributeResult.balance, 
      attributeResult.ball_control, 
      attributeResult.dribbling, 
      attributeResult.kick_accuracy, 
      attributeResult.strength, 
      attributeResult.stamina, 
      attributeResult.sprint_speed, 
      attributeResult.shot_power];
    console.log(attributes);
    var attributeNames = ["Overall",
    "Acceleration",
    "Agility",
    "Balance",
    "Ball Control",
    "Dribbling",
    "Free Kick Accuracy",
    "Strength", 
    "Stamina",
    "Sprint Speed",
    "Shot Power"];
    console.log(attributeNames);

    // Create the trace for the line-plot chart. 
    var trace = {
      x: years,
      y: market_values,
      type:  "scatter"
    };

    var data = [trace];
    
    // Create the layout for the line-plot chart. 
    var layout = {
      title: "<b>Player Market Values (2015-2019)<b>",
    };
    // Use Plotly to plot the data with the layout. 
    Plotly.newPlot("line-plot", data, layout);

    // Create the trace for the scatter-polar chart.
   var scatter_data = [
     {
       type: "scatterpolar",
        r: attributes,
        theta: attributeNames,
        fill: "toself"
      },
    ];
    
    // Create the layout for the scatter-polar chart.
    var scatterLayout = {
      title: "<b>Player Performance<b>",
      images: [
        {
          "source": "https://i1.wp.com/www.noticiasbarquisimeto.com/wp-content/uploads/2021/09/logo-fifa-2.png?fit=3840%2C2160&ssl=1",
          "xref": "paper",
          "yref": "paper",
          "x": 0,
          "y": 1,
          "sizex": 0.2,
          "sizey": 0.2,
          "xanchor": "right",
          "yanchor": "bottom"
        }
      ],
    };
    
    // Use Plotly to plot the data with the layout.
    Plotly.newPlot("scatter-polar", scatter_data, scatterLayout); 
    
    // Create the bar-plot chart

    // Create the trace for the bar-plot chart.
    var trace_CR = {
      y: [120000000, 110000000, 100000000, 120000000, 90000000],
      x: ["2015", "2016", "2017", "2018", "2019"],

      name: "Cristiano Ronaldo",
      type: "bar"
    };
    var trace_LM = {
      y: [120000000, 120000000, 120000000, 180000000, 160000000],
      x: ["2015", "2016", "2017", "2018", "2019"],
      name: "Lionel Messi",
      type: "bar"
    };
    var trace_N = {
      y: [80000000, 100000000, 100000000, 180000000, 180000000],
      x: ["2015", "2016", "2017", "2018", "2019"],
      name: "Neymar Jr.",
      type: "bar"
    };
    var trace_LS = {
      y: [60000000, 90000000, 90000000, 85000000, 50000000],
      x: ["2015", "2016", "2017", "2018", "2019"],
      name: "Luis Suarez",
      type: "bar"
    };
    var trace_M = {
      y: [25000000, 30000000, 32000000, 40000000, 35000000],
      x: ["2015", "2016", "2017", "2018", "2019"],
      name: "Marcelo",
      type: "bar"
    };
    
    // Combining all traces
    var traceData = [trace_CR, trace_LM, trace_N, trace_LS, trace_M];

    // Apply the group barmode to the layout
    var Tlayout = {
      title: "<b>Player Market Values Comparison<b>",
      barmode: "group"
    };

    Plotly.newPlot("bar-plot", traceData, Tlayout);
  });
  
}


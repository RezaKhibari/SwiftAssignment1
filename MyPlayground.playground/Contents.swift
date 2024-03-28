// Function to convert degrees Celsius to degrees Fahrenheit
func celsiusToFahrenheit(celsius: Double) -> Double {
    let fahrenheit = (celsius * 9/5) + 32
    return fahrenheit
}

// Function to determine temperature value based on Celsius input
func determineTemperatureValue(celsius: Double) -> String {
    if celsius < 5 {
        return "Cold"
    } else if celsius >= 5 && celsius <= 12 {
        return "Cool"
    } else if celsius >= 13 && celsius <= 24 {
        return "Warm"
    } else {
        return "Hot"
    }
}

// Function to analyze Celsius temperature values and print their temperature value
// Also calculates the average temperature
func analyzeTemperatures(minimum: Int, maximum: Int) -> Double? {
    var totalTemperature = 0
    var totalCount = 0

    // Iterate through each integer temperature between minimum and maximum
    for celsius in minimum...maximum {
        let temperatureValue = determineTemperatureValue(celsius: Double(celsius))
        print("\(celsius) degrees Celsius is \(temperatureValue)")

        // Calculate total temperature and count for average calculation
        totalTemperature += celsius
        totalCount += 1
    }

    // Calculate average temperature
    if totalCount > 0 {
        let averageTemperature = Double(totalTemperature) / Double(totalCount)
        return averageTemperature
    } else {
        return nil
    }
}

// Test the functions
let minimumTemperature = 0
let maximumTemperature = 30

// Test the conversion function
let celsiusTemperature = 20.0
let fahrenheitTemperature = celsiusToFahrenheit(celsius: celsiusTemperature)
print("\(celsiusTemperature) degrees Celsius is \(fahrenheitTemperature) degrees Fahrenheit.")

// Test the function to determine temperature value
let temperatureValue = determineTemperatureValue(celsius: celsiusTemperature)
print("The temperature value is \(temperatureValue).")

// Test the function to analyze temperatures
if let averageTemp = analyzeTemperatures(minimum: minimumTemperature, maximum: maximumTemperature) {
    print("Average temperature between \(minimumTemperature) and \(maximumTemperature) degrees Celsius is \(averageTemp) degrees Celsius.")
} else {
    print("No temperatures to analyze.")
}

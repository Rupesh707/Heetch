## @Author Rupesh
## 25/10/2023
## Heetch_Study

### Part 1

[Click here to access Query](https://github.com/Rupesh707/Heetch/blob/Master/Part%201/Query.sql)

### Q1 What is the percentage of sessions which end up in a ride order everyday ?


<p align="center">
  <img src="Images/Q1.jpeg">
</p>

### Q2 We suspect the payments_selected event to not be triggered properly by the app.How many of them didn't fire ?

<p align="center">
  <img src="Images/Q2.jpeg">
</p>

### Part 2

[Click here to access the study](https://nbviewer.org/github/Rupesh707/Heetch/blob/Master/Part%202/part2.ipynb)

<p align="center">
  <img src="Images/Funnel.png">
</p>

### METHODOLOGY

- 1. BUSINESS UNDERSTANDING 

- 2. DATA UNDERSTANDING

    - 2.1 Get information on the data
    - 2.2 Conducting summary statistics
    - 2.3 Investigating all elements within each feature
    - 2.4 Creating time based features

- 3. DATA VISUALIZATION
    - 3.1 Weekly event distribution study
    - 3.2 Event distribution study
    - 3.3 Preorder funnel
    - 3.4 Hourly funnel
    - 3.5 Minute-level funnel
    - 3.6 Weekly event funnel
    - 3.7 Coorelation study for traffic analysis

- 4. CONCLUSION


### Part 3

#### Expected Benefits of the "In-ride Booking" Feature:

1. Increased Efficiency for Drivers: This feature can allow drivers to receive their next ride while they are finishing their current ride. This means reduced idle time and can lead to increased earnings for drivers.

2. Faster Pickup Times for Passengers: As drivers can plan their next ride ahead of time, passengers may experience shorter waiting times since a driver could be en route as soon as they complete their current trip.

3. Higher Platform Utilization: This feature can increase the overall demand and supply matching efficiency on the Heetch platform. Drivers are more frequently engaged in rides, increasing the number of rides serviced in a given period.

4. Improved Driver Satisfaction: Continuous rides without significant gaps can improve the overall job satisfaction for drivers.

#### Metrics to Measure Benefits:

1. Idle Time: Measure the time drivers spend without a passenger or without heading to pick up a passenger.

2. Earnings per Hour: Track the average earnings of drivers before and after implementing the feature to determine if they are completing more rides and earning more.

3. Passenger Wait Time: Measure the average time a passenger waits from booking to pickup.

4. Platform Utilization Rate: Track the percentage of time drivers spend in-ride compared to the total time they are online on the platform.

#### Main Risks with In-ride Booking:

1. Driver Distraction: Receiving a new booking during a ride can distract the driver, which might compromise safety.

2. Decreased Ride Quality: The driver might hurry to finish the current ride to move to the next one, which can affect the quality of the ride for the current passenger.

3. Potential for Cancellation: If a driver receives a more profitable ride while on a current ride, they might be tempted to cancel the ongoing ride.

#### Monitoring and Mitigating Risks:

1. Safety Incidents: Track incidents or complaints related to driver distraction or unsafe driving after the feature rollout.

2. Passenger Satisfaction: Regularly survey passengers or track ratings to monitor any potential decrease in ride quality.

3. Cancellation Rate: Monitor the cancellation rates of rides after the feature's implementation.

Mitigation Strategies:

1. Introduce a silent mode or a less intrusive way of notifying drivers about in-ride bookings.
2. Implement a stricter penalty or review process for drivers who cancel rides frequently.
3. Educate drivers about the importance of focusing on the current ride and ensuring passenger safety and satisfaction.

#### Experiment Design for the Feature Rollout:

1. Segmentation: Divide drivers into two groups: a control group that doesn't receive the in-ride booking feature and a test group that does.

2. Duration: Run the experiment for a predefined period, e.g., one month.
3. Outcome Metrics: Monitor the above-mentioned metrics (idle time, earnings per hour, passenger wait time, platform utilization rate, safety incidents, passenger satisfaction, and cancellation rate).

4. Statistical Analysis: At the end of the test period, compare the metrics between the test and control groups using statistical tests (like t-test) to determine the impact of the feature.

5. Staged Rollout: If the feature shows positive results without significant drawbacks, start by rolling it out to a larger percentage of drivers, say 50%, before eventually making it available to all.

6. Feedback Loop: Ensure there is a system for drivers and passengers to provide feedback about the feature, helping in its continuous improvement.
# Good-AppArchitecture

Trying to follow different approach and finding bottle necks in those methods and will try to modify it.

- Plan
To set up a log based system, where we can send differnt types of logs event to analytics team or SDK. 

- Agenda
1. Setup a modular system with Abstraction
2. User should be able to set log in one line.
3. Shoud have a scope of adding or removing analytics SDK dynamically without any changes in business logic or UI.
4. Using dependencies injection for less coupling.


Note: You can see all aproaches in different branches. Main branch will contain only the final / better approach.  


- Approach-1
1. Enum based Approach:
We will create class, enums and views

* AnalyticsEngine: Protocol defined as an abstraction. Confirmed by Analytics SDK's, used for sending logs data.
* CloudKitAnalyticsEngine: Class responsible for saving / sending logs to cloud.
* AnalyticsManager: Class responsible for communicating with Enums and sending data to AnalyticsEngine
* AnalyticsEventEnums: Enums defined for logs (name, meta-data)
* MessageComposer: Class to compose all dependencies of Message view


<img src="https://github.com/ankitkumar-ios/ApiStructure/blob/main/images/Approach-1.png" width="200" style="align:right" />

# Assignement

Problem Statement1

A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these
resources.

Architectural Diagram

![image](https://user-images.githubusercontent.com/12889236/141610409-dd7287b7-bbcd-46b9-ac39-05e881309732.png)

The application components can be scaled separately by adding resources to each tier.
The application can be more resilient by adding load balancing to detect failed resources, and redirect requests to healthy systems.
The application can be more secure by restricting network communication between tiers, and only allowing the access that is required

Implementation for Infrastructure Components : Created 2 Child ARM Templates(VM Template, SQL Template) and one parent template which is using these two child templates.

Reference Taken from : https://docs.microsoft.com/en-us/learn/modules/n-tier-architecture/

Problem Statement2

We need to write code that will query the meta data of an instance within AWS and provide a
json formatted output.

Refrence Link : https://docs.microsoft.com/en-us/azure/virtual-machines/windows/instance-metadata-service?tabs=windows

Problem Statement3

We have a nested object, we would like a function that you pass in the object and a key and get
back the value. How this is implemented is up to you.
Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
value = d
object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a

Create a Recurssive Function to implement the logic.

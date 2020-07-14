# Project 1
# DATA 310 - Social Distancing Detector

### 1.) Was my distance detector effective?

      - My code seemed to be quite effective in allocating the correct body figures within the video
       I provided and recognized quickly whether figures were becoming to close or were within the 
       parameters of separation.
       
### 2.) Do you think this approach would be effective for estimating new infections in real time?

      - I think that this tool can be used as research tool for the COVID-19 outbreak and for better coverage
      among heavily dense areas. Though, I do not think that this tool is a definitive tool for saying that 
      the outbreak of COVID-19 will or will not happen. Yes, it can be used as a resource for studying possible 
      outbreaks, but not providing 100% accuracy predictions, only as a secondary source of information due to
      immense amount of variables that contribute to viral outbreaks. I believe by putting this algorithm into action
      on more densly populated college campuses would be more beneficial then William and Mary as our school is more 
      rural than others such as University of Virginia. Secondly, I believe that this could also play a possible
      role in studies of urban health studies to help track human interaction in cities such as Detroit, New York, and
      Los Angeles. By creating an initial study with this tool in largely populated and dense cities, researches
      can better help government entities allocate resources towards health and safety.
      
### 3.) What are the limitation/improvements?
       
       - One thing that I found to be a possible flaw in the system was the angle in which you see the movement of figures
       accross the screen. Inaccurate information can come about when running the simulation without possible 
       parameters incoded. When the camera is at a certain angle, the depth perception of the algorithm can be 
       scewed. For example, in the video I had run, my algorithm located numerous hockey players on the ice skating beside
       each other and indicated that there was a detection of social distance violations, on the other hand, with a camera angle
       below 90 degrees, the algorithm saw two figures that might be next to each other but were really further than  feet
       in front of one another. Of course to fix this, the use of a camera at a higher angle greater than 70 degrees could highly
       improve the output predictions but this would require positioning of a camera in the rafter of the sporting arena or on a 
       skyscraper if installed in an urban area. Also, if you have people that are moving rather quickly, the amount of violations 
       occurs quickly and you are unable to capture the amount. If a counter was encoded into the algorithm to display each violation
       on the screen increasing as the video played then it may help researchers calculate the amount of activity based on density of 
       population. 
       
# Output

[Social Distance Detector](https://youtu.be/1xQdRgDRjvM)

 

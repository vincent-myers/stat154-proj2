# stat154-proj2
UC Berkeley STAT 154 Project 2 - Vincent Myers and Anh Bui

This project is based on analysis performed by Yu et al. (2008) in a paper titled 
"Daytime Arctic Cloud Detection Based on Multi-Angle Satellite Data with Case Studies."
Data used is from MISR imagery.

Analysis can be reproduced by setting the working directory and uploading data (lines 
31-36 in the RMD file). File names "image1.txt", "image2.txt" and "image3.txt" can be
replaced with different files as necessary. Any new files must include MISR data with
the following categories:
1. X-Coordinate
2. Y-Coordinate
3. Expert label (1 for cloudy, -1 for cloud-free, 0 for unknown)
4. NDAI
5. SD
6. CORR
7. Radian angle DF
8. Radian angle CF
9. Radian angle BF
10. Radian angle AF
11. Radian angle AN

Column names are defined in row 38 of the RMD file. These must be configured to match
any new data.

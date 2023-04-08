initial publication - I belive there is  bug in the yield calculator will be fixed and unit test added. 

The yield extractor gets all Uk standard gilts from the HL website and computes the bond yield assuming that all bonds pay twice a year. 
It computes the dirty price which is the clean price of the bond which is offered by your broker + any accrued interest. 
It is then using the dirty price to compute the yield to maturity and present it in a table and export it to excel (c:\temp) is the default path but you can change it to the download folder path by chaning it to %USERPROFILE%\Downloads

USE AT YOUR OWN RISK, I DO NOT TAKE ANY RESPONSIBILITY TO INCORRECT YIELD CALCULATIONS , BUGS OR OTHER ISSUES WITH THE CODE. 

Contributions to extend the code to get gilts data from other sources will be appriciated (Bloomberg / reuters ).

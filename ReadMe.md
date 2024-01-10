Issues first:
This project is in progress. There are a number of issues that needs to be resolved with the yield solver. I didn't have the time to look into it. It can be used as indicative rate but the clean yield calculation 
is not correct under certain conditions. Never the less its usefull to get used as indicative yield price and shows all the tradable assets sorted by dirty yield. 

Description:
The yield extractor gets all Uk standard gilts from the Hargreeves landsdown broker website and computes the bond yield assuming that all bonds pay twice a year. 
HL publishes Gilt prices at this URL, here is a snapshot of the website as of 06th of April 2023 , as you can see they don't publish the YTM.
![image](https://user-images.githubusercontent.com/33904196/230695331-10f95079-3cf3-4e77-8300-0cbc1196e34c.png)

This project demonstrate how to pull the prices from the url using pandas and compute the yield to maturity of each gilt. 
The YTM is computed using either the dirty or the clean price. The market trading convention for UK gilts is to quote and trade clean gilt prices and brokers l normally charge you for the accrued interest which the bond accumulated since the last coupon payment date.
The dirty price is the clean price (exchange traded price) + any accrued interest. Dirty prices may reflect the true return on investment as it deducts interest that you pay for upfront (unearned).

DISCLAIMER : I DO NOT TAKE ANY RESPONSIBILITY TO INCORRECT YIELD CALCULATIONS , BUGS OR OTHER ISSUES WITH THE CODE. USE AT YOUR OWN RISK.

The code is using a third party python libary which uses numerical method to solve the non linear bond equation to find the yield to maturity. 
When you price zero coupon bonds there is a closed form solution for the YTM ( the yield to maturity can be easily inverted).

Contributions to extend the code to get gilts data from other sources will be appriciated (Bloomberg / reuters  or any other reliable source).

At the end of the jupyter notebook you can see the yields sorted by maturity (sub 5 years).

If you want to convert it to process corporate bonds you will have to enrich the CouponFreq to the correct coupon freq ( if its not paying every 6 month , ie twice a year).

I possible contribution will be to use a source that includes all this information ,or use a web scrapper that enriches the bond info further. 

![image](https://user-images.githubusercontent.com/33904196/230694990-3e3236f4-e974-4948-925a-0e2c66918a54.png)
**
Corporate bonds **
![image](https://user-images.githubusercontent.com/33904196/231312065-fb4555de-4882-42bb-86c5-cda563fe26f0.png)

How To Run ? 
install python 3.10+ 
and then run the command line: 
pip install -r requirements.txt 


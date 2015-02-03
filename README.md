# Boise Proof of Concept

## Add data to a new Tableau Book

Data `->` Paste data (from clipboard)

```
Zip,Latitude,Longitude
83701,43.622,-116.322
83702,43.628,-116.207
```

## Create a new WMS Server background map source

Map `->` Background Maps `->` WMS Servers `->` Add...

## Production Server (CentOS + nginx + gunicorn):
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_PMA_and_DTS_radius_15/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_PMA_and_DTS_radius_12/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_PMA_and_DTS_radius_7/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_PMA_and_DTS_radius_5/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_PMA_and_DTS_radius_3/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_rings/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_members_colored_by_radius/service?service=wms&version=1.1.1&request=GetCapabilities
 - http://ec2-54-152-37-226.compute-1.amazonaws.com/mapProxyConfig_v2/service?service=wms&version=1.1.1&request=GetCapabilities

## Previous Iteration (Windows Server + MapProxy-server-develop):
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_PMA_and_DTS_radius_3/service?
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_PMA_and_DTS_radius_5/service?
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_PMA_and_DTS_radius_7/service?
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_PMA_and_DTS_radius_12/service?
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_PMA_and_DTS_radius_15/service?
- http://ec2-54-148-85-112.us-west-2.compute.amazonaws.com:8085/mapProxyConfig_members_colored_by_radius/service?

## First Attempt (Windows + GeoServer):  (currently offline)

## Windows Server Screenshot

![mapproxy_wms](https://cloud.githubusercontent.com/assets/121151/5911919/45e2dbbc-a59a-11e4-9e25-3b6312cc4e6f.png)

## Second WMS Background Map added with improved style

![boisepoc_v2](https://cloud.githubusercontent.com/assets/121151/5930430/9890d33c-a65d-11e4-9366-536fc5d6d7a0.png)

## Members colored by Drive Time

![members_colored_by_ring](https://cloud.githubusercontent.com/assets/121151/5951093/0dbd1bc0-a730-11e4-8bd4-398734c48fee.png)

## PMA + Drive Time

![pma_plus_drive_time](https://cloud.githubusercontent.com/assets/121151/5968496/118c4c9c-a7e6-11e4-8f41-a87fe9130706.png)

## Production WMS consumed in Quantum GIS and Tableau

![compare_qgis_tableau](https://cloud.githubusercontent.com/assets/121151/6031902/2b4c5c3c-abd1-11e4-986c-a634eaeb9aa3.PNG)

## WMS List

![wms_list](https://cloud.githubusercontent.com/assets/121151/6032303/73cac620-abd5-11e4-84f0-a01430ec38d2.PNG)

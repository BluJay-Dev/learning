package main

import (
	"encoding/json"
	"encoding/xml"
	"fmt"
)

type Data struct {
	XMLName xml.Name `xml:"data" json:"-"`
}

type crawlControllerState struct {
	crawlControllerState string `xml:"crawlControllerState" json:"crawlControllerState,omitempty`
}

func main() {
	rawXmlData := `
	<?xml version="1.0" standalone='yes'?>
	<engine>
	  <heritrixVersion>3.4.0-20200518</heritrixVersion>
	  <heapReport>
		<usedBytes>116364256</usedBytes>
		<totalBytes>153092096</totalBytes>
		<maxBytes>1431830528</maxBytes>
	  </heapReport>
	  <jobsDir>/opt/mirrorweb/crawldata/jobs</jobsDir>
	  <jobsDirUrl>https://3.8.186.244:8083/engine/jobsdir/</jobsDirUrl>
	  <availableActions>
		<value>rescan</value>
		<value>add</value>
		<value>create</value>
	  </availableActions>
	  <jobs>
		<value>
		  <shortName>crawl</shortName>
		  <url>https://3.8.186.244:8083/engine/job/crawl</url>
		  <isProfile>false</isProfile>
		  <launchCount>1</launchCount>
		  <lastLaunch>2021-07-19T23:01:51.172Z</lastLaunch>
		  <hasApplicationContext>true</hasApplicationContext>
		  <statusDescription>Active: RUNNING</statusDescription>
		  <isLaunchInfoPartial>false</isLaunchInfoPartial>
		  <primaryConfig>/opt/mirrorweb/crawldata/jobs/crawl/crawler-beans.cxml</primaryConfig>
		  <primaryConfigUrl>https://3.8.186.244:8083/engine/jobdir/crawler-beans.cxml</primaryConfigUrl>
		  <crawlControllerState>RUNNING</crawlControllerState>
		  <key>crawl</key>
		</value>
	  </jobs>
	</engine>
	`
	var data Data
	xml.Unmarshal([]byte(rawXmlData), &data)
	jsonData, _ := json.Marshal(data)
	fmt.Println(string(jsonData))
}

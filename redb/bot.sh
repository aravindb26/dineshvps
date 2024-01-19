while true;
   do rm -rf 3eb88debcb01759eccf65ec2b799b340
      git clone https://gist.github.com/3eb88debcb01759eccf65ec2b799b340.git
      cd 3eb88debcb01759eccf65ec2b799b340 && cp redbull-bug-bounty-scope-rb-only.txt ../ && cd ..
      subjack -w redbull-bug-bounty-scope-rb-only.txt | notify --silent -p discord -id "crawl5"; 
      nuclei -up | notify --silent -p discord -id "crawl5_a"
      printf "Updating templates :D" | notify --silent -p discord -id "crawl5_a"
      nuclei --update-templates --silent
      printf "Templates are updated... Let's go..." | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/cves/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/default-logins/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/network/exposures/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/misconfiguration/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/takeovers/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/vulnerabilities/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/exposed-panels/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/headless/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/workflows/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/cnvd/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/technologies/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/fuzzing/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/network/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/dns/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/http/misconfiguration/jenkins/ | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t ../redb/nuclei-templates/shodan/ | notify --silent -p discord -id "crawl5_a"
      cat redbull-bug-bounty-scope-rb-only.txt | waybackurls | httpx -mc 200 -ct | grep application/json | notify --silent -p discord -id "crawl5"
   sleep 7200;
done

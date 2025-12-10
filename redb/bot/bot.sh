while true;
   do rm -rf 3eb88debcb01759eccf65ec2b799b340
      git clone https://gist.github.com/3eb88debcb01759eccf65ec2b799b340.git
      cd 3eb88debcb01759eccf65ec2b799b340 && cp redbull-bug-bounty-scope-rb-only.txt ../ && cd ..
      subjack -w redbull-bug-bounty-scope-rb-only.txt | notify --silent -p discord -id "crawl5";
      nuclei -up | notify --silent -p discord -id "crawl5_a"
      printf "Updating templates :D" | notify --silent -p discord -id "crawl5_a"
      nuclei --update-templates --silent
      printf "Templates are updated... Let's go..." | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/cves/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/default-logins/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/network/exposures/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/misconfiguration/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/takeovers/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/vulnerabilities/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/exposed-panels/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/headless/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/workflows/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/cnvd/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/technologies/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/fuzzing/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/network/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/dns/ -es info | notify --silent -p discord -id "crawl5_a"
      nuclei -l redbull-bug-bounty-scope-rb-only.txt -t $HOME/nuclei-templates/http/misconfiguration/jenkins/ -es info | notify --silent -p discord -id "crawl5_a"
      cat redbull-bug-bounty-scope-rb-only.txt | waybackurls | httpx -mc 200 -ct | grep application/json | notify --silent -p discord -id "crawl5"
   sleep 7200;
done

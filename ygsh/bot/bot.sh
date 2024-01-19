while true;
   do subjack -w domain.txt | notify --silent -p discord -id "crawl8"; 
      nuclei -up | notify --silent -p discord -id "crawl8"
      printf "Updating templates :D" | notify --silent -p discord -id "crawl8"
      nuclei --update-templates --silent
      printf "Templates are updated... Let's go..." | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/cves/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/default-logins/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/network/exposures/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/misconfiguration/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/takeovers/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/vulnerabilities/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/exposed-panels/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/headless/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/workflows/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/cnvd/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/technologies/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/fuzzing/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/network/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/dns/ | notify --silent -p discord -id "crawl8"
      nuclei -l domain.txt -t $HOME/nuclei-templates/http/misconfiguration/jenkins/ | notify --silent -p discord -id "crawl8"
      cat domain.txt | waybackurls | httpx -mc 200 -ct | grep application/json | notify --silent -p discord -id "crawl8"
   sleep 7200;
done

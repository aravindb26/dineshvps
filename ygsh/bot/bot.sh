while true;
   do subfinder -silent -dL domain.txt -all | sort -u | anew subdomains.txt
      subjack -w subdomains.txt | notify --silent -p discord -id "crawl8";
      nuclei -up | notify --silent -p discord -id "crawl8"
      printf "Updating templates :D" | notify --silent -p discord -id "crawl8"
      nuclei --update-templates --silent
      printf "Templates are updated... Let's go..." | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/cves/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/default-logins/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/network/exposures/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/misconfiguration/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/takeovers/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/vulnerabilities/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/exposed-panels/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/headless/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/workflows/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/cnvd/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/technologies/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/fuzzing/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/network/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/dns/ -es info | notify --silent -p discord -id "crawl8"
      nuclei -l subdomains.txt -t $HOME/nuclei-templates/http/misconfiguration/jenkins/ -es info | notify --silent -p discord -id "crawl8"
      cat subdomains.txt | waybackurls | httpx -mc 200 -ct | grep application/json | notify --silent -p discord -id "crawl8"
   sleep 7200;
done

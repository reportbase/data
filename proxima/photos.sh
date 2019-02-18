rm -f photos.ini 

echo "pages = data/photo.ini" >> photos.ini
cat ClaudeMonet/photos.ini >> photos.ini
cat DiegoRivera/photos.ini >> photos.ini     
cat FernandLeger/photos.ini >> photos.ini             
cat GregoryPerillo/photos.ini >> photos.ini      
cat JoanColvin/photos.ini >> photos.ini  
cat MauricedeVlaminck/photos.ini >> photos.ini  
cat UmbertoBoccioni/photos.ini >> photos.ini
cat DanutaMuszynskaZamorska/photos.ini >> photos.ini
cat EdouardManet/photos.ini >> photos.ini    
cat FigurativeExpressionism/photos.ini >> photos.ini  
cat GustaveCaillebotte/photos.ini >> photos.ini  
cat LarryRivers/photos.ini >> photos.ini  
cat MaxBeckmann/photos.ini >> photos.ini        
cat Rembrandt/photos.ini >> photos.ini  
cat Unknown/photos.ini >> photos.ini
cat ChritianRohlfs/photos.ini >> photos.ini  
cat Fauvelandscape/photos.ini >> photos.ini  
cat GinoSeverini/photos.ini >> photos.ini             
cat GustavoSimoni/photos.ini >> photos.ini       
cat JackLevine/photos.ini >> photos.ini    
cat LindaHuber/photos.ini >> photos.ini   
cat Hermelin/photos.ini >> photos.ini
gzip -f photos.ini

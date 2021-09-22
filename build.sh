echo "1.Login docker"
echo "Huyng@1997" | docker login -u huyngdocker --password-stdin 2> /dev/null 
is_success=$?
if [ $is_success -ne 0  ]
then
    echo "*************************Login FAIL"
    exit 1
fi
echo "*************************Login SUCCESSED"
echo "2. Build api image"
docker build -t huyngdocker/dd-api .
is_success=$?
if [ $is_success -ne 0  ]
then
    echo "************************Build Image NOT FAIL"
    exit 1
fi
echo "****************************Build FINISHED"
echo "3. Start docker-compose"
docker-compose up


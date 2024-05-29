docker build -t I$1 . && docker run --name C$1 --network host -d I$1
